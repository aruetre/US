clear all
close all
clc

%cargar/leer una imagen
im =imread('manzanas.jpg');

%al leer la imagen, podemos observar que tiene tres canales, cada uno de 164x307 dimesiones
size(im);

%para obtener la matriz de un canal:
canal1=im(:,:,1); %indicamos todas las filas (1 miembro) y todas las columnas (2 miembro) de la matriz 1 (tercer miembro)

%mostrar imagen
figure(1);
imshow(im);

%hacer un cast a double, para poder procesar la imagen
imd=double(im);

%guardarla. Como está en formato double, debemos hacer un cast de nuevo para ponerla en formato entero de 8 bits
imwrite(uint8(imd),'prueba.jpg');
