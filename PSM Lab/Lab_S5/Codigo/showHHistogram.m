% CALCULA Y REPRESENTA GRAFICAMENTE EL HISTOGRAMA DE LA IMAGEN

function showHHistogram(hh)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
x=[0:359];

figure()


%stem(x,histo);
bar(x,hh,0.1);
axis([0 359]);


% R=1 G 0->1 B=0
MAP(1:60,1)= 1;
MAP(1:60,2)= (0:1:59) /60;
MAP(1:60,3)= 0;

% R=1->0 G =1 B=0
MAP(61:120,1)= (59:-1:0) /60;
MAP(61:120,2)= 1;
MAP(1:60,3)= 0;

% R=0 G =1 B=0->1
MAP(121:180,1)= 0;
MAP(121:180,2)= 1;
MAP(121:180,3)= (0:1:59) /60;

% R=0 G =1->0 B=1
MAP(181:240,1)= 0;
MAP(181:240,2)= (59:-1:0) /60;
MAP(181:240,3)= 1;

% R=0 G =1 B=1->0
MAP(241:300,1)= (0:1:59) /60;
MAP(241:300,2)= 0;
MAP(241:300,3)= 1;

MAP(301:360,1)= 1;
MAP(301:360,2)= 0;
MAP(301:360,3)= (59:-1:0) /60;

colormap(MAP);
colorbar ( "xtick", [], "SouthOutside");

title('H histogram')


end
