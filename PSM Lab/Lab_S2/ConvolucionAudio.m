%Preparamos el entorno
clear all
close all
clc

## Convolución entre el sonido de disparo y el buenos dias
##Informacion de los audios
infoDisparo=audioinfo('02SonidoMagnun500disparando.wav')
infoBdias=audioinfo('BuenosDias.wav')

%Leemos audio disparo
[Disparo FsDisparo]= audioread('02SonidoMagnun500disparando.wav');
%El audio esta en stereo quitamos un canal
Disparo=Disparo(:,1);

%Generamos la grafica para el disparo
figure('name','Procesamiento de audio.','NumberTitle','off');
subplot(221)
plot(Disparo);
title ("Audio Disparo");

%Leemos audio saludo
[Bdias FsBdias]= audioread('BuenosDias.wav');

%Generamos la grafica para el saludo
subplot(222)
plot(Bdias);
title ("Audio Buenos Dias");

%Generamos la convolucion entre el saludo y el disparo
y=conv(Bdias,Disparo);

%Generamos la grafica para la convolucion
subplot(212)
plot(y);
title ("Audio Convolucion Buenos Dias<>Disparo");

%Debemos normalizar el audio (desaturar)
%y=y/max(y);
y/=max(y);

%Generamos el fichero de audio de la convolucion
audiowrite('acustica.wav',y,FsBdias);

%Reproducimos disparo
playerDisparo = audioplayer (Disparo, FsDisparo);
play(playerDisparo);
%Obtenemos la duracion para que los audios no se solapen
%introducimos una espera igual a la duración+1
pause(infoDisparo.Duration+1);

%Reproducimos el saludo
playerBdias = audioplayer (Bdias, FsBdias);
play(playerBdias);
pause(infoBdias.Duration+1);

%Reproducimos la convolucion
%Como trabajamos con frecuencias diferentes
%la función conv usa la Fs menor
%eso lo podemos ver en su info
infoAcustica=audioinfo('acustica.wav')
[Acustica FsAcustica]= audioread('acustica.wav');
playerConvolucion = audioplayer (Acustica, FsAcustica);
play(playerConvolucion);



