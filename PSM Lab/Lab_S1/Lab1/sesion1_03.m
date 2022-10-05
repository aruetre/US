%----------------------------------------------------
%  		LABORATORIO 1
% 	     Números Complejos
%
%Autor: Alberto J. Molina
%Fecha: 7-13
%Versión:1
%%Modificaciones a la versión anterior: 
% - Mejora de la representación gráfica->10-15
%----------------------------------------------------
close all
clear all
clc

%----------------------------------------------------
%	Ficheros utilizados en este apartado
%	lab1.m  [m]
%	potenciaz.m [c]
%
%	[c] A completar por el alumno
%	[m] A modificar por el alumno
%
%----------------------------------------------------


%----------------------------------------------------------------------
%	En esta primera parte se trata de visualizar
%	el recorrido que realiza un número complejo z^n
%	cuando n va incrementándose. Podrá observar
%	varias gráficas. En una de ellas se mostrará el plano complejo
%	y la trayectoria que sigue el vector z^n en el. En dicho
%	plano complejo se muestra el círculo unidad, que determina
%	si en una serie del tipo z^n ésta será convergente (si z está
%	encerrado por el círculo unidad), divergente (si no lo está)
%	o alternante (si coincide sobre la misma circunferencia).
%
%	El alumno deberá completar la función potenciaz.m y después
% 	modificar las partes de este programa que se indican y ejecutar
%	el programa. Deberá avisar a su profesor de prácticas cuando
%	se hayan realizado todas las pruebas.
%----------------------------------------------------------------------


%-----------------------------------------------------------------------
%	El alumno deberá probar su función con los siguientes números
%	complejos	
%
%	0.73+0.53i
%	1.05 e^(i pi/10)
%	cos(pi/4)+isen(pi/4)
%
%	OJO: Los números complejos anteriores no tiene por qué estar en formato Octave.
%	Deberá escribirlos correctamente
%-----------------------------------------------------------------------

	N= 40;	

	z = 0.73+0.53i; % A MODIFICAR POR EL ALUMNO

	potz = potenciaz(z,N);   %Esta es la función que deberá completar

%-------------------------------------------------------------------------
%	Mostramos los 10 primeros valores en la consola
%-------------------------------------------------------------------------
	printf('\n\n Los primeros 10 valores de z^n \n\n');
	for n=1:10
		printf(' n=%d, z^n = %f + i%f \n',n-1,real(potz(n)), imag(potz(n)));
	end
	fprintf('\n\n');

%--------------------------------------------------------------------------
%   Representación de resultados
%--------------------------------------------------------------------------

	figure();
	subplot(2,1,1);
	stem(0:N-1,abs(potz),'linewidth',2,'filled');
	grid on;
	ylabel('|z^n|','fontsize',18 );
	subplot(2,1,2);
	stem(0:N-1,angle(potz),'linewidth',2,'filled');
	xlabel('n', 'fontsize',18);
	grid on;
	ylabel( 'Fase \times \pi','fontsize',18  );


	figure();
	plot(real(potz),imag(potz),'o-','linewidth',2);
	grid on;
	for n=1:100
	    xc(n)=cos(2*pi*n/100);
    	    yc(n)=sin(2*pi*n/100);
	end
	hold on
	plot(xc,yc,'-.c','linewidth',2);
	hold off
	axis([-2 2 -2 2]);
	line([-2 2], [0 0]);
	line([0 0], [-2 2]);
	text(1.5,0.1,'Re','fontsize',14);
	text(0.1,1.5,'Im','fontsize',14);	
	for n=1:5
    		text(real(potz(n)),imag(potz(n)),strcat(' z^',mat2str(n-1,1)));
	end
