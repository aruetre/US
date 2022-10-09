%Preparamos el entorno
clear all
close all
clc
%y[n] = x[n] + c x[n-L]
L=4;
c=0.8;%Factor atenuación
a=1;%representa las y de la ecuacion de diferencia
b=zeros(5,1);
b(1)=1;%represetna las x de la ecuacion de diferencia
b(L+1)=c;
h=filter(b,a,delta(0:9))
n=0:9;

%Representamos la onda
figure('name','Procesamiento de audio.','NumberTitle','off');
stem(n,h);
title ("Respuesta Impulsiva Eco");

x=[1 2 -1 zeros(1,10)];
y=filter(b,a,x);
yc=conv(h,x);

%Representamos la onda
figure('name','Procesamiento de audio.','NumberTitle','off');
stem(y);
title ("Convolucion Eco");
