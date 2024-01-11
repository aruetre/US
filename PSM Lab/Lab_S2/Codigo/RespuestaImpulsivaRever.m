%Preparamos el entorno
clear all
close all
clc
%y[n] = c y[n-L] + x[n]
L=4;
c=0.8;%Factor atenuación

a=[1 0 0 0 -c];
b=1;
n=0:100;
h=filter(b,a,delta(n))

%Representamos la onda
figure('name','Procesamiento de audio.','NumberTitle','off');
stem(n,h);
title ("Respuesta Impulsiva Rever");
