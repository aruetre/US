%Preparamos el entorno
clear all
close all
clc

##3.Aplicación a eco de 'BuenosDias.wav' y para un td= 1.5s
Fichero='BuenosDias.wav';
%La funcion audioread, genera una matriz de datos
%entre sus valores nos da la señal y su Fs
[x Fs]= audioread(Fichero);
td=0.8;
##Necesitamos la Fs para poder calcular L
L=Fs*td;
c=0.6;%Factor atenuación
a=1;%representa las y de la ecuacion de diferencia
b=zeros(1,L+1);
b(1)=1;%represetna las x de la ecuacion de diferencia
b(L)=c;
y=filter(b,a,x)
%Representamos la onda
figure('name','Procesamiento de audio.','NumberTitle','off');
subplot(211)
plot(x)
title ("Señal Audio");
subplot(212)
plot(y);%Mejor para grandes cantidades de datos
title ("Señal Eco Audio");

%Reproducimos audio cuantizado
player = audioplayer (x, Fs);
play (player);
pause(6);
player = audioplayer (y, Fs);
play (player);
audiowrite ('Eco.wav', y, Fs);
