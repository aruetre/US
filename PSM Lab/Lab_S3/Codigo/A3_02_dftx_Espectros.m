#Inicializamos
close all
clear all
clc

#Cargamos el audio
audioD=load('dftx.dat');

senal=audioD.dft;
Fs=audioD.Fs;
N=length(senal);
n=0:N-1;

#Representamos al señal que viene transformada en el fichero
figure('name','Audio Señal DFT.','NumberTitle','off');
subplot(311);
stem(n,abs(senal), "markerfacecolor", [1 0 1]);
title ("Señal dftx.dat");

#Representamos el modulo de la transformada en k/N
subplot(312);
stem(n/N,abs(senal), "markerfacecolor", [1 0 1]);
title ("Modulo Transformada en k/N");

#Representamos el modulo de la transformada en angulo o fase
subplot(313);
stem(n,angle(senal)*180/pi, "markerfacecolor", [1 0 1]);
#stem(n,rad2deg(angle(senal)), "markerfacecolor", [1 0 1]);
title ("Ángulo o Fase Transformada en k/N");

#Buscamos las posiciones dentro de la señal absoluta de la DFT
#El valor es > 30 porque en el espectro de la DFT hemos visto que las
#las espigas mas altas estan por encima de 30.
posiciones=find(abs(senal) > 30);

#Para esta señal nos daría 81 y 321 en k
#Precaucion para los vectores en octave
#empezamos en 1 por lo que la posicion incial de
#de k es 80
k=80;
#Frecuencia discreta
f=k/N;
#Frecuencia en hz
F=f*Fs;
#Amplitud A=(k*2)/N
A=(k*2)/N;
#Fase o angulo solo de las espigas que son nuestras
#componentes de frecuencia variable posiciones en este
#caso es de 20
Fase=angle(senal)*180/pi;
Fase=Fase(k);
#Fase=rad2deg(angle(transSenal));

