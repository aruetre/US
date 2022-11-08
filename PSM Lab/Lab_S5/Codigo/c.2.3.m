close all
clear all
clc

im=imread('cuadro.bmp');

subplot(121);
imshow(im);

%para procesarla, tendremos que hacer el cast a double
im=double(im);

%Otra técnica -> hacer valor medio de los tres canales
imBN= (im(:,:,1)+im(:,:,2)+im(:,:,3))/3;

%Devolvemos a formato uint8 y moostramos la imagen en blanco y negro
subplot(122);
imshow(uint8(imBN));
