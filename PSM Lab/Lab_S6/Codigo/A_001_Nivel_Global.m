clear all
close all
clc
pkg load image
im=imread('farola.jpg');
imshow(im);

#fftshit se aplica al espectro y desplaza la componente de continua al medio.
esp=fftshift(fft2(im));
ShowFft(esp,1);
[n m]=size(im);

#Filtro paso baja ideal
h=filtro(n,m,10,0,1);

#Filtro paso baja Butterworth
#h=filtro(n,m,10,0,0);

#Filtro paso alta ideal
#h=filtro(n,m,10,1,1);
#Filtro paso alta Butterworth
#h=filtro(n,m,10,1,0);

figure();
imshow(uint8(255*h));

espOut=esp.*h;
ShowFft(espOut,1);

out=abs(ifft2(espOut));
figure();
imshow(uint8(out));

