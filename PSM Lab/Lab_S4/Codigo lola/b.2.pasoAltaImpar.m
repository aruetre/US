close all
clear all
clc

%Filtro paso alta

L=101; %Impar
n=0:L-1;
Fc=300; %Hz
Fs=1000; %Hz

fc=Fc/Fs;
M=(L-1)/2; %solo cuando L es impar, así M es entero. Sino, no funcionaría
%Cuando tenemos L Impar, podemos calcular el filtro paso alta como -> hHP=delta(n-m)-hLP(n), siendo hLP el filtro paso baja

hLP=2*fc*sinc(2*fc*(n-M));

hHP=delta(n-M)-hLP;
esp=fft(hHP);
H=abs(esp);
f=n/L;
plot(f(1:L/2),H(1:L/2));

