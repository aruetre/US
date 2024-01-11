#Inicializamos
close all
clear all
clc

#Numero de muestras
N=50;
#Rango
n=0:N-1;
#Valor de K
k=n;
#Frecuencia discreta
f=2/N;

#Señal tipica
senal=cos(2*pi*f*n);

#Generamos la señal desplazada en 20 muestras
desplazamiento=20;
senalDesplazada=circshift(senal,desplazamiento);


#Transformada de la señal x1
transSenal=fft(senal);

#Representamos al señal
figure('name','Desplazamiento Temporal.','NumberTitle','off');
subplot(311);
stem(n,senal, "markerfacecolor", [1 0 1]);
hold on;
stem(n,senalDesplazada, "markerfacecolor", [1 0 1]);
title ("Señal y Señal Desplazada");
hold off;

#Representamos el modulo de la transformada en k
subplot(312);
stem(k,abs(transSenal), "markerfacecolor", [1 0 1]);
title ("Modulo Transformada en k");

#Representamos el modulo de la transformada en k/N
subplot(313);
stem(k/N,abs(transSenal), "markerfacecolor", [1 0 1]);
title ("Modulo Transformada en k/N");

