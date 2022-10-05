%Preparamos el entorno
clear all
close all
clc

N=20;
n=0:N-1; %matriz de elementos
f=0.5;
fase=deg2rad(90);  % Debe estar en radianes  grados * pi / 180 o la funcion deg2rad(90)

%Generamos la señal
x=cos(2*pi*f*n+fase);

%Representamos
subplot(311);
stem(n,x,'linewidth',1,'markerfacecolor','b');
title ("Señal Discreta");

%Calculamos al transformada de fourier
Xk=fft(x);

%Calculamos el modulo
k=n;
modXk=abs(Xk);
subplot(312);
stem(k,modXk,'linewidth',1,'markerfacecolor','b');
title ("Señal Transformada Fourier");

subplot(313);
stem(k/N,modXk,'linewidth',1,'markerfacecolor','b');
title ("Señal Transformada Fourier en frecuencia k/N");
