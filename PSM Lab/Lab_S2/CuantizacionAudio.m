%
clear all
close all
clc

%Fichero='Pitido.wav';
Fichero='BuenosDias.wav';

nb=2 ; %Numero de bits

%La funcion audioread, genera una matriz de datos
%entre sus valores nos da la señal y su Fs
[senal Fs]= audioread(Fichero);

%Representamos la onda
figure('name','Procesamiento de audio.','NumberTitle','off');
subplot(221)
plot(senal);
grid on;
xlabel('Muestras [s]');
ylabel('Señal');
title ("Audio Original");

%Reproducimos audio original
player = audioplayer (senal, Fs);
play (player);
pause(5)
%Procesamos el audio
senalq=cuantizacionbipolar(senal,nb);

%Representamos la onda cuantizacion
subplot(212)
plot(senalq);
grid on;
xlabel('Muestras [s]');
ylabel('Señal');
title ("Audio Cuantizado");

%Guardamos el audio
audiowrite ('Holaq.wav', senalq, Fs);

%Reproducimos audio cuantizado
player = audioplayer (senalq, Fs);
play (player);
