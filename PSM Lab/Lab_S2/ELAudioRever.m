##3.Aplicación reverberación de 'BuenosDias.wav' y para un td= 1.5s
Fichero='BuenosDias.wav';
%La funcion audioread, genera una matriz de datos
%entre sus valores nos da la señal y su Fs
[x Fs]= audioread(Fichero);
td=0.5;
##Necesitamos la Fs para poder calcular L
L=Fs*td;;
c=0.6;%Factor atenuación
b=1;%representa las y de la ecuacion de diferencia
a=zeros(1,L+1);
a(1)=1;%represetna las x de la ecuacion de diferencia
a(L)=-c;
y=filter(b,a,x)
%Representamos la onda
figure('name','Procesamiento de audio.','NumberTitle','off');
subplot(211)
plot(x)
title ("Señal Audio");
subplot(212)
plot(y);%Mejor para grandes cantidades de datos
title ("Señal Rever Audio");

%Reproducimos audio cuantizado
player = audioplayer (x, Fs);
play (player);
pause(6);
player = audioplayer (y, Fs);
play (player);
