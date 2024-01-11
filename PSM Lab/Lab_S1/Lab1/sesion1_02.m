%-------------------------------------------------------------------------------
%  		LABORATORIO 1
% 	  Introduccion a Octave
%
% @Author: Juan A. Castro García
% @Date: 20201019
% @Version: 0.1
%
% Nota: En el documento no se escriben las tildes para evitar problemas entre
% las distintas codificaciones de ficheros entre sistemas operativos.
%-------------------------------------------------------------------------------

% Este documento continua a sesion1_01.m, y lo que se proponen son varios
% ejercicios.

%%
% Cree un vector llamado t1, con una muestra por segundo entre los 3 y los 8
% segundos usando el operador ":".

t1=[3:1:8]; % A MODIFICAR

% Cree un vector llamado t2, con dos muestras por segundo entre los 0 y los 5
% segundos usando el operador ":".

t2=[0:0.5:5]; % A MODIFICAR

assert(t1,[3 4 5 6 7 8]) %Comprueba que hayas realizado bien el ejercicio

assert(t2,[0 0.5 1 1.5 2 2.5 3 3.5 4 4.5 5])

%%

%%
% Otro elemento fundamental es saber crear funciones, y como devolver elementos.
% para ello cree la funcion my_sin, que es de forma similar a my_cos.
% [y, t] = my_sin(t_ini, t_fin, f, Fs)

t_ini = 0;
t_fin = 4;
f = 0.5;
Fs = 2;

[a, b] = my_sin(t_ini, t_fin, f, Fs) % A COMPLETAR(FICHERO)

assert(b,t_ini:1/Fs:t_fin)

assert(a,sin(2*pi*f*(t_ini:1/Fs:t_fin)))

%%
% Dibuje un stem  que sea de color azul con el resultado de my_sin, y
% sobre la misma figura, realice un plot, con linea discontinua y color rojo.
% No olvide indicar las unidades de los ejes.

% A COMPLETAR(AQUI)
figure
stem(b,a)
xlabel('t(s)')
ylabel('Amplitud')
hold on
plot(b,a,'r--')
%%
% Recorrido de vectores. Sea el vector h de longitud impar:

h = rand(1,101);

% Extraiga del vector h los elementos que ocupan posiciones impares en orden
% creciente.
% A COMPLETAR(AQUI)
impares=h(1:1:end);
fprintf('| %.10f |\n',impares)


% Extraiga del vector h los elementos que ocupan posiciones pares en orden
% creciente.
% A COMPLETAR(AQUI)
pares=h(2:2:end);
fprintf('| %.10f |\n',pares)



% Extraiga del vector h los elementos que ocupan posiciones impares en orden
% decreciente.
% A COMPLETAR(AQUI)
impares_desc=h(end:2:2);
fprintf('| %.10f |\n',impares_des)
fprintf('| %.10f |\n',flip(impares))

% Extraiga del vector h los elementos que ocupan posiciones pares en orden
% decreciente.
% A COMPLETAR(AQUI)
pares_desc=h(end:1:1);
fprintf('| %.10f |\n',pares_des)
fprintf('| %.10f |\n',flip(pares))



