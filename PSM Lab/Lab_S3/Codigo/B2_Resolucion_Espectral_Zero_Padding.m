#Inicializamos
close all
clear all
clc

#Numero de muestras
N=10;
#F0
F0=100;
#Frecuencia Muestreo
Fs=3*F0;
#Frecuencia
f=F0/Fs;
#Rango
n=0:N-1;
#Valor de K
k=n;

L=100;%ceros añadiso al final de la señal

#Señal
senal=sin(2*pi*n*f+pi/3);

#Transformada de la señal
trans=fft(senal);

#Representamos al señal
figure('name','Resolución Espectral.','NumberTitle','off');
subplot(311);
stem(n,senal, "markerfacecolor", [1 0 1]);
#stem(n*Fs/N,senal, "markerfacecolor", [1 0 1]);
title ("Señal senal=sin(2*pi*n*f+pi/3)");

#Representamos el modulo de la transformada en k
subplot(312);
stem(k,abs(trans), "markerfacecolor", [1 0 1]);
title ("Modulo Transformada en k");

#Representamos el modulo de la transformada en k/N
subplot(313);
stem(k/N,abs(trans), "markerfacecolor", [1 0 1]);
title ("Modulo Transformada en k/N");


%Veamos la funcion aplicando zero padding

xzp = [senal zeros(1,L)]; %añadimos los 0 al final de la señal
Nzp= length(xzp); %calculamos el tamaño total de muestras
nzp= 0:Nzp-1; %definimos el nuevo rango de valores
figure(2);
subplot(211);
stem(nzp, xzp, "markerfacecolor", [1 0 1]);
title ("Señal con Zero Padding");

xftzp=fft(xzp); %calculo de la transformada

subplot(212);
stem(nzp,abs(xftzp), "markerfacecolor", [1 0 1]);
#stem(nzp*Fs/Nzp,abs(xftzp), "markerfacecolor", [1 0 1]);
title ("Modulo Transformada");

