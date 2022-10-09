%Preparamos el entorno
clear all
close all
clc

T=1.5; %Tiempo en segundos
Fs=8e3;%Frecuencia muestreo
F=1e3; %Frecuencia
N=Fs*T;%Muestras que es igual a la frecuencia de muestreo por el tiempo
f=F/Fs;
n=0:N-1;%Matriz de elementos
x=cos(2*pi*f*n);

% Generamos el audio
% help audiowrite audiowrite (FILENAME, Y, FS)
audiowrite ('SonidoEj1.wav', x, Fs);
%El siguiente comando para reproducirlo
%solo esta disponible para linux
%system('play SonidoEj1.wav')
%Otra opción es reproducirlo directamente
%dentro de Octave
player = audioplayer (x, Fs);
play (player);

%Representamos la onda
sonido=audioread('Hola.wav');
plot(sonido);
grid on;
xlabel('Muestras [s]');
ylabel('Señal');
title (F)
