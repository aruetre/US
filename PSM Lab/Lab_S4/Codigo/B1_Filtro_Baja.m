close all
clear all
clc

#Fc=100 Hz Fs=1000 Hz L=31

L=31; %número de coeficientes del filtro
n=0:L-1; %definimos el rango
M=(L-1)/2; %Calculamos retardo
Fc=100; %Frecuencia de corte en Hz
Fs=1000; %Frecuencia de muestreo en HZ

fc=Fc/Fs; %frecuencia de corte normalizada
h=2*fc*sinc(2*fc*(n-M)); %no ponemos pi porque ya está incluido en la función sinc de octave

%visualizamos los coeficientes
subplot(211);
stem(n,h);
%Visualizamos la forma del
subplot(212);
k=n;
esp=fft(h);
plot(k/L, abs(esp)); %mejor plot para que se vea la forma del filtro más clara
