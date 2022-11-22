close all
clear all
clc

im=imread('gato.jpg');

%Definimos máscaras
%detecta variaciones de gris (tantos positivos coomo negativos
mask_Gx=[-1 0 1; -2 0 2; -1 0 1]; %gradiente en dirección x -> bordes verticales
mask_Gy = [-1 -2 -1; 0 0 0; 1 2 1]; %gradiente en dirección y -> bordes horizontales


%Aplicamos la máscara a la imagen
out_Gx=imConvolve(im, mask_Gx);
out_Gy=imConvolve(im, mask_Gy);
out_mod=sqrt(out_Gx.^2+out_Gy.^2);

%Normalizamos el resultado a valores entre 0 y 255
out_Gx=imRemap(out_Gx);
out_Gy=imRemap(out_Gy);
out_mod=imRemap(out_mod);

%mostramos los resultados
figure(1)

imshow(im);
figure(2)
subplot(131);
imshow(out_Gx)
subplot(132);
imshow(out_Gy)
subplot(133);
imshow(out_mod)
