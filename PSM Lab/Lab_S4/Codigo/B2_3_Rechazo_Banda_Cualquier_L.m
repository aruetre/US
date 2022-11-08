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
fb=0.5-Fb/Fs;

%filtros de paso baja
hlp=2*fa*sinc(2*fa*(n-M)); %no ponemos pi porque ya está incluido en la función sinc de octave
hlp1=2*fb*sinc(2*fb*(n-M)); %no ponemos pi porque ya está incluido en la función sinc de octave

%filtro de paso alta
s=(-1).^n;
hhp=s.*hlp1;

%filtro final es la adiccion de ambos
h=hhp+hlp;

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
