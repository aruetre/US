% Esta función permite extraer datos de una secuencia para realizar
% operaciones de desplazamiento e inversión temporal con 
% secuencias de cualquier tipo.
%
%  + El primer argumento es la secuencia de partida que se va a utilizar 
%    (los datos muestreados)
%
%  + El segundo argumento indica los tiempos en los que fueron muestreados 
%    la secuencia anterior.
%
%  + El tercer argumento indica qué valor de la secuencia queremos obtener
% 
% Para secuencia de datos x = [0 1 2 3 4 5 0] tomadas en los instantes 
% t = [-1 0 1 2 3 4 5]:
%       x[1] = secuencia(x,t,1)       (¿cuanto vale?)
%       x[3-n] = secuencia(x,t,3-n)   (para cualquier valor de n)
%
% Ejemplo de uso: x= [0 1 2 3 4 5 0]; t =[ -1 0 1 2 3 4 5];
%               i=1;
%		for n=-10:10
%		  y(i) = secuencia (x,t,3-n);
%		  r(i) = n; 
%		  i=i+1;
%		end
%		stem(r,y);
%
% Este programa copia elementos de x en y ¿Cómo se relacionan los 
% elementos de uno con los elementos del otro?
%	
%Autor: Alberto J. Molina
%

function 	y = secuencia (x,n,p);
	
	if nargin != 3
		error('Se necesitan más argumentos');
	end

	x = x(:);	%Vector con la secuencia
	n = n(:); 
	lonx = length(x);	

	if p < n(1) || p > n(end)
		y = 0;
	else
		pos = p - n(1) +1;
		y= x(pos);
	end


endfunction
