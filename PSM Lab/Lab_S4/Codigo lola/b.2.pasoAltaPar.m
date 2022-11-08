clear all
close all
clc


L=100; %Par
M = (L-1)/2;
n=0:L-1;
Fc=400; %Hz
Fs=2000; %Hz

%Como tenemos un valor L par, no podemos usar la técnica de h=delta(n-m)-hLP, ya que m no sería
%un número entero (m=(L-1)/2)
%En este caso, vamos a multiplicar el hLP por una secuencia del tipo (-1).^n.
%Aquí fc=0.5-fcLP -> Entonces, si queremos que nuestra fc en el paso alta sea 0.1, entonces tenemos que usar una fcLP de 0.4

fc=0.5-Fc/Fs;
hLP=2*fc*sinc(2*fc*(n-M));

hHP=hLP.*(-1).^n;
H=abs(fft(hHP));
f=n/L*Fs; %para mostrarlo en HZ

plot(f(1:L/2), H(1:L/2));

