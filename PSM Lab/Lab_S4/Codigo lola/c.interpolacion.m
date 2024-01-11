close all
clear all
clc
%interpolación -> aumentamos tasa de muestreo
# interpolado I=2 de señal de 100 valores
I=3
original= 1:100;
plot(original)

# interpolación
interpolada = zeros(1,length(original)*I)%matriz de 0, en la que indicamos como longitud el tamaño de la señal original multiplicado por el valor de la interpolación
interpolada(1:I:end) = original %adjudicamos a la matriz de 0 el valor de la señal original, indicando como paso el valor de la interpolación

%ejemplo
%original = [1 1 1]
%interpolacion 2
%interpolada = 0   0   0   0   0   0  (tamaño original 3*2 de interpolacion)
%interpolada(1:2:end)= 1   0   1   0   1   0

figure(3)
plot(interpolada);


L= 11;
M=(L-1)/2;
n=0:L-1;
fc = 1/(2*I)
h = 2*fc*sinc(2*fc*(n-M));

filtrada=conv(interpolada,h,"same") %poner ahí same es como usar cconv-> convolución circular
figure(4)
plot(filtrada)
