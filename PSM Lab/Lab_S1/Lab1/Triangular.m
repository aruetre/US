%----------------------------------------------
%	Función que permite generar una
%	señal Triangular
%----------------------------------------------

function y =Triangular( M );



%-------------------------------------------------------------
%	Argumento de entrada (<-)
%	M: Valor del máximo de la secuencia triangular

%	Argumentos de salida (->)
%	y: salida con las muestras de la señal triangular
%
%	Ej.: para M =3, y[n] = {1 2 3 2 1}
%-------------------------------------------------------------


%-------------- Inicialización de los vectores de salida-------------
	L = 2*M-1;
	y = zeros(L,1);




	%------------------------- Salida y--------------------------------------
	for n = 1:L

		%----------------------- A COMPLETAR POR EL ALUMNO ---------
		%	El procedimiento para generar la señal triangular es
		%	simple. Estamos dentro de un bloque for...end donde
		%	n cambia de 1 hasta L.
		%	Si n<=M
		%		y[n] = n
		%	sino
		%		y[n] = 2M - n = L+1-n
		%	fsi
		%
		%	NOTA: Se recuerda que el primer elemento de la matriz
		%	en Octave en el 1, por tanto, y(1) se debe corresponder
		%	con el instante de tiempo t=0.
		%	Para acceder al elemento i de una matriz en Octave usamos
		%	y(i), no y[i]
		%-----------------------------------------------------------
		if n<=M
      y(n)=n;
    else
      y(n)= M-(L+1-n);
    end

	endfor


endfunction


%
