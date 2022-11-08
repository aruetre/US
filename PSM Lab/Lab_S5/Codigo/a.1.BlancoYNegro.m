clear all
close all
clc

%cargar/leer una imagen
im =imread('globo.jpg');

%mostrar imagen
figure(1);
imshow(im);

%hacer un cast a double, para poder procesar la imagen
imd=double(im);

%guardarla. Como está en formato double, debemos hacer un cast de nuevo para ponerla en formato entero de 8 bits
imwrite(uint8(imd),'prueba.jpg');


