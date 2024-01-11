close all
clear all
clc

im=imread('cuadro.bmp');

subplot(121);
imshow(im);

%para procesarla, tendremos que hacer el cast a double
im=double(im);

%Otra técnica -> usar canal verde únicamente (es el más similar a la curva de BN). Método más burdo
imBN= im(:,:,3);

%Devolvemos a formato uint8 y moostramos la imagen en blanco y negro
subplot(122);
imshow(uint8(imBN));
