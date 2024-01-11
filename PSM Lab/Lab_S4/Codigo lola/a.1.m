clear all
close all
clc

%filtro de enfasis  y [n]=x[n]−cx[n−1]

N=100; # tamaño de los coeficientes del filtro.
n=0:N-1;
a=[1];
b=[1 -0.97]

h=filter(b,a,delta(0:N-1))  %respuesta impulsiva
H=abs(fft(h)) %transformada
f=n/N %pasamos a f
plot(f(1:N/2),H(1:N/2)) # Solo muestra hasta f_nyquist=0.5
