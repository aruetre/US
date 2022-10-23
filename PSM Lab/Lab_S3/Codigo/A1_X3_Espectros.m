#Inicializamos
close all
clear all
clc

#Numero de muestras
N=20;
#Rango
n=0:N-1;
#Valor de K
k=n;
#Señal X3=u[n]+cos(2*pi*0.2*n)+cos(2*pi*0.25*n)
senalA1X1=ones(1,N);
senalA1X3=senalA1X1+cos(2*pi*0.2*n)+cos(2*pi*0.25*n);
#senalA1X3=senalA1X1+cos(2*pi*0.2*n)+2*cos(2*pi*0.25*n);

#Transformada de la señal x1
transA1X3=fft(senalA1X3);

#Representamos al señal
figure('name','Transformadas X3.','NumberTitle','off');
subplot(311);
stem(n,senalA1X3, "markerfacecolor", [1 0 1]);
title ("Señal X3=u[n]+cos(2*pi*0.2*n)+cos(2*pi*0.25*n)");

#Representamos el modulo de la transformada en k
subplot(312);
stem(k,abs(transA1X3), "markerfacecolor", [1 0 1]);
title ("Modulo Transformada en k");

#Representamos el modulo de la transformada en k/N
subplot(313);
stem(k/N,abs(transA1X3), "markerfacecolor", [1 0 1]);
title ("Modulo Transformada en k/N");
