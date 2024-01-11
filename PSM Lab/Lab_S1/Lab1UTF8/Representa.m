%

function Representa(y)

	y=y(:);
	Np=size(y,1);
	stem(0:Np-1,y,'linewidth',2,'filled');
	xlabel('n','fontsize',18);
	ylabel('y[n]','fontsize',18);
	grid on;

endfunction
