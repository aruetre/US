%----------------------------------------------------
%  		LABORATORIO 1
% 	  	 PARTE2
%
%Autor: Alberto J. Molina
%Fecha: 7-13
%Versión:1
%Modificaciones a la versión anterior:
% - Mejora de la parte gráfica: 10-15
%----------------------------------------------------
close all
clear all
clc

%----------------------------------------------------
%	Ficheros utilizados en este apartado
%	lab1_2.m  [m]
%	Representa.m
%	Coseno.m [c]
%	secuenca.m
%	Pulso.m	[c]
%	Triangular.m [c]
%
%	[c] A completar por el alumno
%	[m] A modificar por el alumno
%
%----------------------------------------------------



%-------------------- Menú --------------------------
printf('Elige el apartado que quiere seleccionar\n');
printf('[1] Apartado 1 \n');
printf('[2] Apartado 2 \n');
apartado = input('Elige la opción [1-2]  ');
switch(apartado)

case 1  %Apartado 1
%----------------------------------------------------------------------
%	Estudie el fichero secuencia.m y a continuación programe
%	ls funciones Triangular.m y Pulso.m Puede comprobar que ambos
%	programas funcionan correctamente desde la consola de Octave.
%	Por ejemplo, si tecleamos Triangular(3), aparecerá en la consola
%	la siguiente información, si todo va bien: ans = 1 2 3 2 1
%	Si repetimos para Pulso(4,6), aparecerá ans = 4 4 4 4 4 4.
%----------------------------------------------------------------------

	M = 4; % ------ MODIFICAR SI SE DESEA ---------------------------
	L = 8; % ------ MODIFICAR SI SE DESEA ---------------------------

  sectri = Triangular(M);	% ----- DEBE COMPLETAR ESTA FUNCIÓN.
	secpulso = Pulso(M,L);  % ----- DEBE COMPLETAR ESTA FUNCIÓN.

	% Ahora representaremos la señal triangular. Supongamos que ésta se
	% encuentra entre [-(M-1), M-1]

	%t = -(M-1):(M-1) ;   %La secuencia Triangular está entre -(M-1) y (M-1). Tiene longitud 2M-1
			     %La secuencia pulso está comprendida entre 0:L-1.
			     %---------- MODIFICAR PARA EL PULSO
 	t=0:M-1;

	%Procedemos a aplicar un desplazamiento temporal
	Desp = -5;	%------MODIFICAR PARA DIFERENTES VALORES, Desp =-5,-1,4

	m=1;
	for n= -15:15
		ar = Desp-n;	%--------- MODIFICAR CON  n-Desp o Desp-n
		y1(m) = secuencia(secpulso,t,n);  %----- MODIFICAR ÉSTA PARA LA FUNCIÓN PULSO
		%y1(m) = secuencia(sectri,t,n);  %----- MODIFICAR ÉSTA PARA LA FUNCIÓN PULSO
		%y2(m) = secuencia(sectri,t,ar);  %----- MODIFICAR ÉSTA PARA LA FUNCIÓN PULSO
		y2(m) = secuencia(secpulso,t,ar);  %----- MODIFICAR ÉSTA PARA LA FUNCIÓN PULSO
		m=m+1;
	endfor
	figure();
	stem(-15:15,y1,'linewidth',2,'filled');
	grid on;
	axis([-15 15 -0.1 M+1]);
	title('Secuencia original');

	figure();
	stem(-15:15,y2,'linewidth',2,'filled');
	grid on;
	axis([-15 15 -0.1 M+1]);
	title('Secuencia procesada');




case 2 %Apartado 2

Np = 50 ;  %--- A MODIFICAR --------
	   %Número de puntos de la señal senoidal que se generará para algunos apartados
F=   100;  %--- A MODIFICAR --------
	   %Frecuencia en Hercios de la señal senoidal
Fs=  1000; %--- A MODIFICAR --------
	   %Frecuencia de muestreo  en Hercios.
%----------------------------------------------------------------------
%	En primer lugar vamos a muestrear una
%	señal senoidal de frecuencia F a una tasa Fs.
%	El número de puntos viene dado por Np.
%	Complete la función SenalMuestreada.m
%----------------------------------------------------------------------



	y=Coseno(F, Fs,Np);	%---FUNCIÓN A COMPLETAR POR EL ALUMNO

%--------------------------Representación de la señal y ---------------

figure();
Representa(y);
title(strcat('F=',num2str(F,6),'Hz, F_s=',num2str(Fs,6),'Hz'),'fontsize',18);
%printf('Pulse una tecla para continuar\n');
%pause
%----------------------------------------------------------------------


%----------------------------------------------------------------------
%	La frecuencia f de una señal discreta en el tiempo
%	está relacionada con el número de ciclos que dicha señal
%	contiene en una muestra, o dicho de otro modo, el número de
%	muestras necesarias para que la señal discreta realice
%	un ciclo. Por ejemplo: f=0.1 ciclos/muestra, indica que
%	cada muestra tiene la décima parte de un ciclo, o lo que
%	es lo mismo, que un ciclo completo requiere 10 muestras de la
%	señal. La frecuencia f de una señal periódica de frecuencia analógica F
% 	y muestreada a Fs, viene dada por la relación f= F/Fs.
%	Por ejemplo, para una señal senoidal de F=100 Hz(ciclos/segundo), muestre
%	ada a Fs=1000Hz(ciclos/segundo), es decir a una frecuencia 10 veces
%	mayor, provoca que por cada ciclo de dicha señal senoidal, se
%	tengan 10 muestras de la discreta en el tiempo, por tanto con f=0.1
%	Aplicando la relación f=F/Fs se llega al mismo resultado
%
%
%	Lo que vamos a hacer a continuación es observar cómo son las muestras de
%	la señal discreta en el tiempo a medida que la frecuencia de muestreo
%	va cambiando, en definitiva, a medida que f cambia
%----------------------------------------------------------------------

ffinal   = 1;	%---- A MODIFICAR con estos valores: 1,  2, 4
Nf = 18;
Np = max(20, floor(Nf/ffinal));
j=Nf;
nc=3;
nr = ceil(Nf/nc);

	for f= ffinal/Nf:ffinal/(Nf):ffinal

		subplot(nr,nc,j);
		Fs = F/f;
		y=Coseno(F,Fs,Np);
		Representa(y);
    		title(strcat('\omega = 2\pi \times',mat2str(f,3)));
		j=j-1;
	endfor

otherwise
	printf('Adiós \n');

endswitch


return  % Fin del programa










