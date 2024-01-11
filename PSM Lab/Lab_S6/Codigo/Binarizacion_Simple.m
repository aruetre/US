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

T=135;

out=(im>=T)*255;
subplot(143);
imshow(uint8(out));

subplot(144);
imhist(uint8(out)); %no pasamos a double porque imhist trabaja con uint8






