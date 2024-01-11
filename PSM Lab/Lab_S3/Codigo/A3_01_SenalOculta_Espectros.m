#Inicializamos
close all
clear all
clc

#Cargamos el audio
audioSO=load('senalocultax.dat');

senal=audioSO.x;
Fs=audioSO.Fs;
N=length(senal);
n=0:N-1;

#Transformada de la señal
transSenal=fft(senal);

#Representamos al señal
figure('name','Audio Señal Oculta.','NumberTitle','off');
subplot(411);
stem(n,senal, "markerfacecolor", [1 0 1]);
title ("Señal senalocultax.dat");

#Representamos el modulo de la transformada en k
subplot(412);
stem(n,abs(transSenal), "markerfacecolor", [1 0 1]);
title ("Modulo Transformada en k");

#Representamos el modulo de la transformada en k/N
subplot(413);
stem(n/N,abs(transSenal), "markerfacecolor", [1 0 1]);
title ("Modulo Transformada en k/N");

#Representamos el modulo de la transformada en angulo o fase
subplot(414);
stem(n,angle(transSenal)*180/pi, "markerfacecolor", [1 0 1]);
#stem(n,rad2deg(angle(transSenal)), "markerfacecolor", [1 0 1]);
title ("Ángulo o Fase Transformada en k/N");

#Buscamos las posiciones dentro de la señal absoluta de la DFT
#El valor es > 30 porque en el espectro de la DFT hemos visto que las
#las espigas mas altas estan por encima de 30.
posiciones=find(abs(transSenal) > 30);

#Para esta señal nos daría 21 y 181 en k
#Precaucion para los vectores en octave
#empezamos en 1 por lo que la posicion incial de
#de k es 20
k=20;
#Frecuencia discreta
f=k/N;
#Frecuencia en hz
F=f*Fs;
#Amplitud A=(k*2)/N
A=(k*2)/N;
#Fase o angulo solo de las espigas que son nuestras
#componentes de frecuencia variable posiciones en este
#caso es de 20
Fase=angle(transSenal)*180/pi;
Fase=Fase(k);
#Fase=rad2deg(angle(transSenal));




