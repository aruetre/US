close all
clear all
clc

L=131; %número de coeficientes del filtro
n=0:L-1; %definimos el rango
M=(L-1)/2; %Calculamos retardo
Fs=1000; %Frecuencia de muestreo en HZ
%Necesitamos dos frecuencias para la banda
Fa=100;
Fb=300;
%Calculamos la normalizada
fa=Fa/Fs;
fb=Fb/Fs;
fo=(fa+fb)/2;
fc=(fb-fa)/2;


s=2*cos(2*pi*fo*(n-M)); %generamos la secuencia y la agregamos al filtro paso baja
h=2*fc*sinc(2*fc*(n-M)).*s; %no ponemos pi porque ya está incluido en la función sinc de octave

%visualizamos los coeficientes
subplot(311);
stem(n,h);
%Visualizamos la forma del
subplot(312);
k=n;
esp=fft(h);
plot(k/L, abs(esp)); %mejor plot para que se vea la forma del filtro más clara
subplot(313);
plot(Fs*k/L, abs(esp)); %mejor plot para que se vea la forma del filtro más clara
