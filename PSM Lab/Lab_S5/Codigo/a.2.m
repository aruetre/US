close all
clear all
clc

im =imread('helicoptero.bmp');

figure(1);
imshow(im);

%para ver el valor que tiene un pixel, tendríamos que acceder a través de los índices de la matriz
%por ejemplo, el primer pixel sería:
im(1,1);

%como vamos a hacer un procesamiento en la imagen, la pasamos a double
im=double(im);

%Para invertir la imagen, tenemos que restar a 255 el valor de cada pixel
im_inv = 255-im;

figure(2);

%Hacemos un cast a uint8 antes de mostrarla y guardarla
imshow(uint8(im_inv));
imwrite(uint8(im_inv),'helicoptero_invertido.bmp')

