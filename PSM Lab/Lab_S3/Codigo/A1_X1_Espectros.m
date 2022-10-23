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
#Señal escalon X1=u[n]
senalA1=ones(1,N);

#Transformada de la señal x1
transA1=fft(senalA1);

#Representamos al señal
figure('name','Transformadas de X1=u[n].','NumberTitle','off');
subplot(311);
stem(n,senalA1, "markerfacecolor", [1 0 1]);
title ("Señal X1=u[n]");

#Representamos el modulo de la transformada en k
subplot(312);
stem(k,abs(transA1), "markerfacecolor", [1 0 1]);
title ("Modulo Transformada en k");

#Representamos el modulo de la transformada en k/N
subplot(313);
stem(k/N,abs(transA1), "markerfacecolor", [1 0 1]);
title ("Modulo Transformada en k/N");


