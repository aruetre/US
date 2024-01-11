close all
clear all
clc

pkg load image;

im=imread('cuadro.bmp');

subplot(121);
imshow(im);

%para procesarla, tendremos que hacer el cast a double
im=double(im);

%formula luminancia Y = 0.299*R + 0.587*G + 0.114*B
imBN= rgb2gray(im);

%Devolvemos a formato uint8 y moostramos la imagen en blanco y negro
subplot(122);
imshow(uint8(imBN));
