%Preparamos el entorno
clear all
close all
clc
%y[n] = x[n] + c x[n-L]
c=0.8;%Factor atenuación
a=[1 0 0 0 -c];%representa las y de la ecuacion de diferencia
b=1;
n=0:50;
h=filter(b,a,delta(n))

%Representamos la onda
figure('name','Procesamiento de audio.','NumberTitle','off');
stem(n,h);
title ("Respuesta Impulsiva Rever");

x=[1 2 -1 zeros(1,20)];
y=filter(b,a,x);
yc=conv(h,x);

%Representamos la onda
figure('name','Procesamiento de audio.','NumberTitle','off');
stem(y);
title ("Convolucion Rever");
