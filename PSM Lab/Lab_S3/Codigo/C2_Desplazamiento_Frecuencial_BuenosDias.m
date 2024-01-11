close all
clear all
clc


##Informacion de los audio buenos dias
infoBdias=audioinfo('BuenosDias.wav');

n=infoBdias.TotalSamples;

%Leemos audio
[senalBD FsBD]= audioread('BuenosDias.wav');
#Normalizamos el audio
senalBD=senalBD/max(abs(senalBD));
%Si el audio esta en stereo quitamos un canal
%SenalBD=SenalBD(:,1);

#Transformada del audio
transAudio= fft(senalBD);
#Tamaño de la transformada
L=length(transAudio);
#Normalizamos la transformada
transAudio=transAudio/max(abs(transAudio));
#Obtenemos sus frecuencias
frecuencias=FsBD*(1:L)/L;


%Generamos la grafica para el audio
%Si queremos representar el audio en tiempo y amplitud
t=linspace(0,infoBdias.Duration,infoBdias.TotalSamples);
figure('name','Procesamiento de audio.','NumberTitle','off');
subplot(211)
plot(t,senalBD);
title ("Audio Buenos Dias");
xlabel("Tiempo(s)");
ylabel("Amplitud");

subplot(212);
plot(frecuencias, abs(transAudio), "markerfacecolor", [1 0 1]);
title ("Trasformada Buenos Dias");
xlabel("Frecuencia(Hz)");
ylabel("Amplitud");
#activamos el grid
grid on;
#reducimos el tamaño de la celda
set(gca,'YTick',[0.1])
#Acotamos al gráfica en y al max de la señal para apreciar mejor la transformada
ylim([0 max(abs(transAudio))]);
xlim([0 480]);
#xlim([0 mean(find(abs(frecuencias)<1000))]);

#Ahora modulamos el audio 1 octava arriba
F=480;
f=480;
#Tenemos que general la señal con la misma frecuencia de muestreo
#que el audio original
Fs= FsBD;
T=infoBdias.Duration;
N=Fs*T;
n=0:N-1;
f=F/Fs;


w= e.^(-j*2*pi*f*n);
senalBDUP = senalBD.*w;

player = audioplayer (senalBD, FsBD);
play (player);
pause(infoBdias.Duration);

player = audioplayer (senalBDUP, FsBD);
play (player);
pause(infoBdias.Duration);




