clear all
close all
clc

%cargamos el paquete de imagen. Lo necesitamos para usar la función de histograma
pkg load image
im = imread('helicoptero_invertido.bmp'); %cargamos la imagen

subplot(121); %vamos a mostrar imagen junto a su histograma
imshow(im);

subplot(122)
imhist(im); %función para crear histograma

h=imhist(im); %guardamos los valores del histograma en un vector. Este vector lo podemos consultar para ver el número de pixel en un nivel de gris concreto

nivel_gris=240;

pixel=h(nivel_gris+1)





