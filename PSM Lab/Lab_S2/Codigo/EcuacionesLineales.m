%Preparamos el entorno
clear all
close all
clc

##Ejemplos con filter() para x[n] = {1,2,-1} , L=4 y c=0.8:
##1. y[n] = x[n] + c x[n-L]
x=[1 2 -1];
x=[x zeros(1,10)];
c=0.2;%Factor atenuación
a=1;%representa las y de la ecuacion de diferencia
b=[1 0 0 0 0 0 0 c];%represetna las x de la ecuacion de diferencia
y=filter(b,a,x)

%Representamos la onda
figure('name','Procesamiento de audio.','NumberTitle','off');
stem(y);
title ("Señal Eco");

##2. y[n] = c y[n-L] + x[n]
x=[1 2 -1];
L=10;
x=[x zeros(1,10+L)];
c=0.8;%Factor atenuación

a=1;%representa las y de la ecuacion de diferencia
b=zeros(1,L+1);
b(1)=1;%represetna las x de la ecuacion de diferencia
b(L)=c;
y=filter(b,a,x)

%Representamos la onda
figure('name','Procesamiento de audio.','NumberTitle','off');
stem(y);
title ("Señal Rever");



























