close all
clear all
clc

F=440;
Fs= 8000;
T=2;
%El tamaño Fs*T
N=Fs*T;
n=0:N-1;
%Generar el tono
f=F/Fs;
x=cos(2*pi*f*n);

%Tenemos que subir una octava -> duplicar la frecuencia
%tendríamos que pasar de una frecuencia de 440 a otra de 880
%Ponemos f porque como tiene que duplicarse, sería sumarle
%la misma componente de f de la señal original ya seria 440+440
w= e.^(j*2*pi*f*n);
xd = x.*w;

figure('name','Desplazamiento Fecuencial Audio.','NumberTitle','off');
subplot(211);
plot(n,x, "markerfacecolor", [1 0 1]);
hold on;
plot(n,xd, "markerfacecolor", [1 0 1]);
title ("Señal 440 y Señal 880");
hold off;

subplot(212);
xft= fft(x);
stem(n, abs(xft), "markerfacecolor", [1 0 1]);
xdft =fft(xd);
hold on;
stem(n, abs(xdft), "markerfacecolor", [1 0 1]);
title ("Trasnformada 440 y Transformada 880");
hold off;

player = audioplayer (x, Fs);
play (player);
pause(3);

player = audioplayer (xd, Fs);
play (player);
pause(3);

audiowrite('senaloriginal440.wav', x, Fs);
audiowrite('senaldesplazada880.wav',xd,Fs);

