close all
clear all
clc
%Disminuir la tasa de muestreo

# Diezmador D=2 de señal de 100 valores
D=2
original= 1:100;
figure(1);
plot(original);

#filtro antialiasing tamaño L
L= 11;
M=(L-1)/2;
n=0:L-1;
fc = 1/(2*D);
h = 2*fc*sinc(2*fc*(n-m));

filtrada=conv(original,h,"same"); %poner ahí same es como usar cconv-> convolución circular
plot(filtrada);

# diezmado
diezmada = filtrada(1:D:end);% nos quedamos solo con algunas muestras. Esto lo especificamos con el paso del rango (D)
figure(2);
plot(diezmada);
