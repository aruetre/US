%Preparamos el entorno
clear all
close all
clc

%Dada la siguiente ECL
%y[n]=(alfa/2) y[n-L] + (alfa/2) y[n-(L+1)]+x[n]


Fs=16000; %Frecuencia muestreo en Hz
FD=200;%Frecuencia del tono a generar
T=2;%Tiempo de la onda en segundos

L=floor(Fs/FD);
alfa=0.98;

M=Fs*T;%Muestras en total
n=0:M-1;
x=Rampa(n,L);
%x=randn(M,1)*(n'<L);
y=zeros(M,1);

a=zeros(L+2,1);
a(1)=1;
b=1;


a(L+1)=-alfa/2;
a(L+2)=-alfa/2;
y=filter(b,a,x);
y/=max(y);
plot(y);

audiowrite('Ks.wav',y,Fs);
info=audioinfo('Ks.wav');
[Ks FsKs]= audioread('Ks.wav');
playerKs = audioplayer (Ks, FsKs);
play(playerKs);
