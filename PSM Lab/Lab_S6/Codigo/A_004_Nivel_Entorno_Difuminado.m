close all
clear all
clc

mask_gaus =[1 4 6 4 1; 4 16 24 16 4; 6 24 36 24 6; 4 16 24 16 4; 1 4 6 4 1]/256;
im=imread('eye.jpg');
out=imConvolve(im,mask_gaus);

figure(1);
imshow(im);
figure(2);
imshow(uint8(out));
