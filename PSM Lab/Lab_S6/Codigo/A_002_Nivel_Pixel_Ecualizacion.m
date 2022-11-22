close all
clear all
clc
pkg load image

im=imread('helicoptero.bmp');

h=imhist(im)';
h_acumulada = cumsum(h);
cdf=255*h_acumulada/h_acumulada(255);

figure(1);
imhist(im);


figure(2);
plot(cdf)
out=cdf(im+1); %aplicamos la función de transferencia a la imagen


figure(3);
subplot(121);
imshow(im);
subplot(122);
imshow(uint8(out));
