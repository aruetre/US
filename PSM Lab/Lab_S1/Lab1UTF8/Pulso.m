%----------------------------------------------
%	Función que permite generar un pulso
%	rectangular
%----------------------------------------------

function y = Pulso ( M, L );



%-------------------------------------------------------------
%	Argumento de entrada (<-)
%	M: Valor del máximo de la secuencia triangular
%	L: Longitud, expresada en número de muestras, del pulso rectangular

%	Argumentos de salida (->)
%	y: salida con las muestras del pulso rectangular
%
%	Ej.: para M =3,L=4, y[n] = {3 3 3 3 }

%-------------------------------------------------------------
y = zeros(L,1);

%-------------- A COMPLETAR POR EL ALUMNO  -------------------

	%--------------------------------------------------
	% Creamos una matriz de 1 de tamaño Lx1 (L filas y 1 columna)
	% Vea en los demás ficheros que se acompaña cómo se crean
	% matrices de ceros de Lx1 y busque en la ayuda de Octave
	% alguna sentencia similar que permita, en lugar de inicializar
	% con ceros, hacerlo con unos.
	%
	% Finalmente multiplique la matriz creada de unos por M.
	%-------------------------------------------------------
p = ones(L,1);

y= p*M;

endfunction


%
