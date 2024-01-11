close all
clear all
clc

L=31; %número de coeficientes del filtro
n=0:L-1; %definimos el rango
M=(L-1)/2; %Calculamos retardo
Fc=100; %Frecuencia de corte en Hz.
Fs=1000; %Frecuencia de muestreo en HZ. Cambiar por 500, 2000Hz

fc=Fc/Fs; %frecuencia de corte normalizada

ventana = ones(1,L); # ventana rectangular
h=2*fc*sinc(2*fc*(n-M)).*ventana; %no ponemos pi porque ya está incluido en la función sinc de octave

%visualizamos los coeficientes
subplot(211);
stem(n,h);
%Visualizamos la forma del
subplot(212);

esp=fft(h);
H=abs(esp);
f=n/L;
plot(f(1:L/2),H(1:L/2)); %mejor plot para que se vea la forma del filtro más clara
