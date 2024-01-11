close all
clear all
clc

N=3;
a=9;
A= N*N-1+a;
%definimos una matriz de Dimensión NxN donde todos los elementos valgan -1
mask_HB= ones(N,N)*-1;
%calculamos la posición central de la matriz. Para ello, dividimos el número de filas ( columna, valen loo mismo) entre 2
%de ese valor decimal, nos quedamos con el número entero más grande. Ej -> matriz 3x3, dividimos entre 2 nos queda 1,5.
%La posición del centro estará en (2,2) (hemos redondeado hacia arriba) coon ceil
index=ceil(size(mask_HB, 1)/2);
%adjudicamos al elemento central el valor A
mask_HB(index, index)=A;

im=imread('eye.jpg');
out=imConvolve(im,mask_HB);

figure(1)
imshow(im);
figure(2)
imshow(imRemap(out))


