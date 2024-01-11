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
#Señal X5=2*cos(2*pi*0.25*n-(pi/4))+p[n]
p=ones(1,N);
senalA2X5=2*cos(2*pi*0.25*n-(pi/4))+p

#Transformada de la señal x1
transA2X5=fft(senalA2X5);

#Representamos al señal
figure('name','Transformadas X5.','NumberTitle','off');
subplot(311);
stem(n,senalA2X5, "markerfacecolor", [1 0 1]);
title ("Señal X5=2*cos(2*pi*0.1*n-(pi/4))+p[n]");

#Representamos el modulo de la transformada en k
subplot(312);
stem(k,abs(transA2X5), "markerfacecolor", [1 0 1]);
title ("Modulo Transformada en k");

#Representamos el modulo de la transformada en k/N
subplot(313);
stem(k/N,abs(transA2X5), "markerfacecolor", [1 0 1]);
title ("Modulo Transformada en k/N");
