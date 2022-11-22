close all
clear all
clc

pkg load image

im=imread('objetos.jpg'); %con objetos, huevos y huella se puede hacer al ser bimonial
subplot(141);
imshow(im);

subplot(142);
h=imhist(im); %no pasamos a double porque imhist trabaja con uint8
imhist(im);

i=0:255; %rango completo

%Comprobamos si nuestra matrix es correcta viendno si m(0:255)/sa(0:255) es equivalente a mean(mean(im))
%m(h,0:255)/sa(h,0:255)
%mean(mean(im))

%para m1 inicial, tomamos el valor de las 4 esquinas (fondo). Paso 1.c del algoritmo
%para m2 suponemos como el resto de pixeles el valor promedio de la imagen completa (consideramos despreciable que hayamos cogidpo 4 pixeles para mu1)
[a b]=size(im);
im=double(im); %pasamos a double para que no nos dé problemas al calcular el promedio de las esquinas

mu1=(im(1,1)+im(a,1)+im(a,b)+im(1,b))/4;
mu2=m(h,255)/sa(h,255);
T=floor((mu1+mu2)/2); %umbral inicial (redondea hacia abajo el entero)
T_aux=0;
while T_aux~= T
  T_aux=T;
  mu1=m(h,T)/sa(h,T)
  mu2= (m(h,255)-m(h,T))/(sa(h,255)-sa(h,T))
  T=floor((mu1+mu2)/2)
endwhile

%una vez tenemos el valor óptimo de T, binarizamos la imagen y la mostramos


out=(im>=T)*255;
subplot(143);
imshow(uint8(out));

subplot(144);
imhist(uint8(out)); %no pasamos a double porque imhist trabaja con uint8






