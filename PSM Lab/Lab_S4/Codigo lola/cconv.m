% Convolución circular

function y = cconv (a, b);

	a= a(:);
	b= b(:);
	if length(a)>length(b)
		b=[b ; zeros(length(a)-length(b),1)];
	elseif 	length(a)<length(b)
		a=[a ; zeros(length(b)-length(a),1)];

	endif
		
	
	y=real(ifft(  fft(a).*fft(b) ));
	
	
endfunction


