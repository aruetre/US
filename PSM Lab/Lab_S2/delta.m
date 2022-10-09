%Función delta

function y = delta ( n )


	y=zeros(length(n),1);
	poscero = find(n==0);

	y(poscero) = 1;

endfunction

