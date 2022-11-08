close all
clear all
clc

load ITU-HQFilter.coef; %cargamos los coeficientes
%En la ventana de espacio de trabajo, vemos que lo que se ha cargado es ITU_HQFilter
N=length(ITU_HQFilter); %Vemos longitud de los coeficientes del filtro
n=0:N-1;

xfft=fft(ITU_HQFilter);
plot(n/N, abs(xfft)); %usamos plot porque tenemos muchos datos


