%Función Rampa

function y = Rampa ( n, L )
%-------------------------------------------------------------
%	Argumento de entrada (<-)
%	n: vector con las entradas de la función
%	L: escalar con la longitud de la ventana de la rampa
%	Argumentos de salida (->)
%	y: vector con las salidas del sistema
%
%
%	Ejemplo: y= Rampa(0:14,5)
%		y = [-2 -1 0 1 2 0 0 0 0 0 0 0 0 0 0];
%	y tiene longitud 15 (el primer argumento va desde 0 a 14)
%	y es una rampa que cambia de -2 -1 0 1 2 (longitud L=5)
%-------------------------------------------------------------

	n=n(:);
	y=zeros(length(n),1);

	%------------------ A COMPLETAR POR EL ALUMNO -----------
	%
	%	El vector de entrada n cambia de 0,1,2,....
	%	A la salida y se le debe asignar el valor de la
	%	entrada n y restarle el valor medio de la entrada
	%	para hacer que la salida sea simétrica con respecto
	%	al eje de abscisas. (función mean)
	%--------------------------------------------------------
  y(1:L)= n(1:L) - mean(n(1:L));
	y = y/max(y);

endfunction

