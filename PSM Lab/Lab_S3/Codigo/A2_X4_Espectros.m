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
#Señal X4=2*cos(2*pi*0.1*n+(pi/4))
senalA2X4=2*cos(2*pi*0.1*n+(pi/4))

#Transformada de la señal x1
transA2X4=fft(senalA2X4);

#Representamos al señal
figure('name','Transformadas X4.','NumberTitle','off');
subplot(311);
stem(n,senalA2X4, "markerfacecolor", [1 0 1]);
title ("Señal X4=2*cos(2*pi*0.1*n+(pi/4))");

#Representamos el modulo de la transformada en k
subplot(312);
stem(k,abs(transA2X4), "markerfacecolor", [1 0 1]);
title ("Modulo Transformada en k");

#Representamos el modulo de la transformada en k/N
subplot(313);
stem(k/N,abs(transA2X4), "markerfacecolor", [1 0 1]);
title ("Modulo Transformada en k/N");
