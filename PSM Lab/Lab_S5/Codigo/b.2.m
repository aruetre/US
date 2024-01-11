clear all
close all
clc

%cargamos el paquete de imagen. Lo necesitamos para usar la función de histograma
pkg load image
im = imread('manzanas.jpg'); %cargamos la imagen
%Ahora tenemos 3 canales: Rojo (R), Verde (G) y Azul (B). Entonces tendremos que mostrar un histograma para cada canal

subplot(141); %vamos a mostrar imagen junto a su histograma
imshow(im);

subplot(142)
imhist(im(:,:,1)); %Canal rojo

subplot(143)
imhist(im(:,:,2)); %Canal verde

subplot(144)
imhist(im(:,:,3)); %Canal azul
