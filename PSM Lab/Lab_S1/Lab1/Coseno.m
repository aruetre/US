%----------------------------------------------
%	Función que permite generar una
%	señal discreta en el tiempo de
%	tipo coseno de frecuencia F, muestreada
%	con una tasa de Fs Hz.
%----------------------------------------------

function y =Coseno(F, Fs, Np);



%-------------------------------------------------------------
%	Argumento de entrada (<-)
%	F: Frecuencia de la señal coseno (Hz)
%	Fs: Frecuencia de muestreo (Hz)
%	Np: Longitud de la señal discreta en el tiempo

%	Argumentos de salida (->)
%	y: salida con las muestras de la señal coseno. Señal coseno
%	   discreta. Vector columna
%-------------------------------------------------------------


%-------------- Inicialización de los vectores de salida-------------

	y = zeros(Np,1);




	%------------------------- Salida y--------------------------------------
	for n = 1:Np

		%----------------------- A COMPLETAR POR EL ALUMNO ---------
		%	El procedimiento para calcular la salida, y, sería:
		%       Se sabe que la señal coseno en el dominio de tiempo
		%       continuo viene dada por la expresión x(t) = cos(2 pi F t)
		%	Se trata de conseguir y[n] = x(n Ts), donde Ts es
		%	el inverso de Fs.
		%
		%	NOTA: Se recuerda que el primer elemento de la matriz
		%	en Octave en el 1, por tanto, y(1) se debe corresponder
		%	con el instante de tiempo t=0.
		%	Para acceder al elemento i de una matriz en Octave usamos
		%	y(i), no y[i]
		%-----------------------------------------------------------
		y(n)=cos(2*pi*F*Fs');

	endfor




endfunction


%
