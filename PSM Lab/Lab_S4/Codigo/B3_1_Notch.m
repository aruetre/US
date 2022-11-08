close all
clear all
clc

ecg=load("ecg.mat");
senal=ecg.alex.p1;
N=length(senal);
fm=256;
k=0:N-1;
F=k*fm/N;

%cargamos el nocth
notch=load("hnotch.mat");

figure()
subplot(311);
plot(senal);

trans=abs(fft(senal));
subplot(312);
plot(F,trans);

subplot(313);
transNotch=abs(fft(notch.hnotch));
plot(transNotch);

figure()
%aplicamos el filtro notch sobre la señal para eliminar el ruido
y=conv(notch.hnotch,senal);
Ny=length(y);
ny=0:Ny-1;
F=ny*fm/Ny;
subplot(211);
plot(y);
subplot(212);
plot(F,abs(fft(y)));


