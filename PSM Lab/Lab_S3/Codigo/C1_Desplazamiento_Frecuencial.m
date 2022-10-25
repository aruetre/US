clear all
close all
clc

N=50;
n=0:N-1;
f= 2/N;
x=cos(2*pi*f*n);

#Aplicamos un desplazamiento circular en frencuencia
#en la frecuencia, ponemos .^ porque queremos que nos guarde en w
#todas las frecuencias n
w= e.^(j*2*pi*8*n/N); %Vamos a multiplicarlo por una frecuencia 8/N
xd=x.*w;

figure('name','Desplazamiento Fecuencial.','NumberTitle','off');
subplot(211);
stem(n,x, "markerfacecolor", [1 0 1]);
hold on;
stem(n,xd, "markerfacecolor", [1 0 1]);
hold off;
title ("Señal y Señal Deplazada");

subplot(212);
xft= fft(x);
stem(n, abs(xft), "markerfacecolor", [1 0 1]);
xdft =fft(xd);
hold on;
stem(n, abs(xdft), "markerfacecolor", [1 0 1]);
hold off;
title ("Transformada y Transformada Deplazada");
