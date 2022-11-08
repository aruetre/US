close all
clear all
clc

h=zeros(1,360); %360 para cada uno de los ángulos
im=imread('manzanas.jpg');
im=double(im);

hist=hlsHistogramRed(im);


figure(1);
imshow(uint8(im));
showHHistogram(hist);
