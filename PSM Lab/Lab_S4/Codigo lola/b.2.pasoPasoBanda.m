clear all
close all
clc

%paso banda. Necesitamos 2 frecuencias fa y fb
%hPB= 2*hLP*cos(2*pi*fo*(n-M))
%necesitamos fc para hLP y fo para función cos
%fo=(fa+fb)/2 -> valor medio
%fc=(fb-fa)/2-> la mitad del ancho

L=101;
n=0:L-1;
M=(L-1)/2;
Fa=100; %hz
Fb=300; %Hz
Fs=1000; %Hz
%Calculamos f normalizadas
fa=Fa/Fs;
fb=Fb/Fs;
%aplicamos fórmulas de fo y fc
fo=(fa+fb)/2;
fc=(fb-fa)/2;

hLP=2*fc*sinc(2*fc*(n-M));
hPB=2*hLP.*cos(2*pi*fo*(n-M));

H=abs(fft(hPB));
F=n/L*Fs;

plot(F(1:L/2),H(1:L/2));
