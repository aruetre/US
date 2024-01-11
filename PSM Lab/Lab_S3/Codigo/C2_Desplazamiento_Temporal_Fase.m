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
#Transformada de la señal
transSenal=fft(senal);

#Generamos la señal desplazada en 20 muestras
desplazamiento=20;
senalDesplazada=circshift(senal,desplazamiento);
#Transformada de la señal desplazada
transDesplazada=fft(senalDesplazada);

#Representamos al señal
figure('name','Desplazamiento Temporal.','NumberTitle','off');
subplot(411);
stem(n,senal, "markerfacecolor", [1 0 1]);
hold on;
stem(n,senalDesplazada, "markerfacecolor", [1 0 1]);
title ("Señal y Señal Desplazada");
hold off;

#Representamos el modulo de la transformada en k
subplot(412);
stem(k,abs(transSenal), "markerfacecolor", [1 0 1]);
hold on;
stem(k,abs(transDesplazada), "markerfacecolor", [1 0 1]);
title ("Transformada y Transformada Desplazada");
hold off;

#Representamos el modulo de la transformada en k/N
subplot(413);
stem(k/N,abs(transSenal), "markerfacecolor", [1 0 1]);
#Representamos la fase
hold on;
stem(k/N,abs(transDesplazada), "markerfacecolor", [1 0 1]);
title ("Transformada en k/N y Transformada Desplazada en k/N");
hold off;

#Representamos el modulo de la transformada en k/N para la fase
subplot(414);
stem(k/N,angle(transSenal), "markerfacecolor", [1 0 1]);
#Representamos la fase
hold on;
stem(k/N,angle(transDesplazada), "markerfacecolor", [1 0 1]);
title ("Transformada en k/N y Transformada Desplazada en k/N");
hold off;



