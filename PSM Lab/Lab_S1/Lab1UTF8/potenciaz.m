%----------------------------------------------------
%  		LABORATORIO 1
% 	     Números Complejos
%
%Autor: Alberto J. Molina
%Fecha: 7-13
%Versión:1
%Modificaciones a la versión anterior: Ninguna
%----------------------------------------------------

function y = potenciaz (z, N) ;


%---------------------------------------------------
% function y = potenciaz (z, N) ;
%
%	Argumentos de entrada (  <-  ):
%	z : Número complejo de entrada
%	N : Número de iteraciones
%	Salida de la función ( -> )
%	y : Vector columna que contiene z^0, z^1, z^2, z^3,---z^{N-1}
%
%	OJO: El primer elemento de un vector es y(1) NUNCA y(0)
%---------------------------------------------------




	y = zeros(N,1);	%Vector columna de tamaño Nx1 inicializado a 0

	%-----------------------------------------------------
	%	A COMPLETAR POR EL ALUMNO
	%
	%	Deberá realizar un bucle for ... end que calcule
	%	el elemento y(n) = z^n del vector de salida. Recuerde
	%	que el primer elemento de la tabla es el elemento 1 (no el 0)
	%----------------------------------------------------

	for i = 1:(N-1) %end
    y(i)=z^i;
  endfor



endfunction

