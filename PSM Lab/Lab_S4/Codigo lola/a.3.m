close all
clear all
clc

load ITU-HQFilter.coef; %cargamos los coeficientes
%En la ventana de espacio de trabajo, vemos que lo que se ha cargado es ITU_HQFilter
N=length(ITU_HQFilter); %Vemos longitud de los coeficientes del filtro
n=0:N-1;
f=n/N;
xfft=fft(ITU_HQFilter);
H=abs(xfft);
plot(f(1:N/2), H(1:N/2)); %usamos plot porque tenemos muchos datos

%plot(n/N, abs(xft)) -> nos va a salir con el alias

