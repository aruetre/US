clear all
close all
clc

%filtro notch -> tipo especial de filtro de rechazo de banda. Lo deja pasar todo menos un rango de frec muy estrecho
%Aplicación -> señal bioeléctrica. Elimina componente

ecg=load("ecg.mat");

%si vemos el formato de ecg, podemos observar que tenemos el ECG de varias personas. Seleccionamos uno, Alex

senal=ecg.alex.p1; %tenemos varias pruebas de Alex. Seleccionamos una. Para ver la estructura de alex, podmeos seleccionar la variable en el espacio de trabajo y se abre
figure(1);
subplot(211);
plot(senal); %podemos visualizar la señal del ECG
N=length(senal);
n=0:N-1;
fm=ecg.fm;
F=n*fm/N;

%vamos a calcular la transformada de Fourier de la señal
senalft=fft(senal);
subplot(212);
plot(F, abs(senalft));
%Vemos que aparece un pico significativo en 50 -> Ruido de Red

%para eliminarlo, vamos a utilizar el filtro notch

hnotch=load('hnotch.mat');
figure(2);
plot(abs(fft(hnotch.hnotch))); %visualizamos el filtro notch

%lo aplicamos a la señal
y=cconv(hnotch.hnotch,senal);
Ny=length(y);
ny=0:Ny-1;
figure(3);
subplot(211);
plot(ny,y); %señal
subplot(212);
plot(ny*fm/Ny,abs(fft(y))); %transformada para verificar que se ha eliminado la frec de 50Hz

