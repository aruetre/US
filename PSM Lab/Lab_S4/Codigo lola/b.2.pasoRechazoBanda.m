close all
clear all
clc

%Filtro de rechazo de banda
%Necesitamos dos componentes de f-> fa y fb
%Independiente del valor de L (par o impar) -> hR=hLP(fc=fb)+HLP(fc=fa)

L=101;
n=0:L-1;
M=(L-1)/2;
Fa=100; %hz
Fb=300; %Hz
Fs=1000; %Hz
%Calculamos f normalizadas
fa=Fa/Fs;
fb=0.5-Fb/Fs;

hLP=2*fa*sinc(2*fa*(n-M));
hLP_aux=2*fb*sinc(2*fb*(n-M)); %lo usaremos para el HP
hHP=(-1).^(n).*hLP_aux;

hR=hHP+hLP;
H=abs(fft(hR));
F=n/L*Fs;

plot(F(1:L/2),H(1:L/2));
