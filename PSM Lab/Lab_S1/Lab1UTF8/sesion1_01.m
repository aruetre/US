%-------------------------------------------------------------------------------
%  		LABORATORIO 1
% 	  Introduccion a Octave
%
% @Author: Juan A. Castro García
% @Date: 20201019
% @Version: 0.1
%
% Nota: En el documento no se escriben (o eso intento) las tildes para evitar  
% problemas entre las distintas codificaciones de ficheros entre sistemas 
% operativos.
%-------------------------------------------------------------------------------

% Con las dos siguientes lineas se borran todas las variables y se cierran todas
% las ventanas de figura generadas.
clear all
close all

%%
% Recuerde, la mayor diferencia entre realizar scrips en Octave y realizarlos en
% cualquier otro lenguaje de programación es que Octave esta orientado a un uso
% matricial.
%%

%%
% En este documento usare la funcion pause para que pueda ver los efectos de las
% explicaciones paso a paso. Para continuar, debe darle a cualquier tecla de su
% teclado estando el foco en la ventana de comandos. Una vez lo haga, aparecera
% todo el texto y/o las imagenes asociadas hasta el siguiente pause. 
pause

%%
% Como se habra dado cuenta, los comentarios se realizan con %, pero no tiene 
% por que ser para toda la línea. Por ejemplo:
a = 1  % imprimira por la ventana de comandos un 1
a = 2; % en este caso, no imprimira el 2, ya que la funcion del ";" es que no se
       % imprima el resultado por pantalla. 
pause

% Otra diferencia es que Octave no es fuertemente tipado, como por ejemplo lo
% son Java o C; en este aspecto "se parece" a Pyhton. Por lo que las siguientes
% lineas no generan error:
a = "Esto es un char array"
a2 = 'Esto tambien es un char array'
% O mejor dicho, vector de char. Note que hay dos formas de definir un "string".
%%
pause

%%
% Ahora vamos con operaciones básicas:
a = [1 2 3; 4 5 6]; % Matriz 2x3.
b = [6 5 4; 3 2 1]; % otra matrix 2x3.
c = [1 2; 3 4]; % Matrix 2x2
% Por cierto, la función del ";" que está entre los corchetes es de marcador de
% fin de fila.
disp("a+b") % Manda el texto por la ventana de comandos
a+b
disp("c+c");% No se le aplica el efecto del ";" aunque se lo pongas.
c+c
pause

% Vamos con las multiplicaciones
disp("c*c")
c*c
disp("a*b")
try
  a*b
catch err
  warning(err.identifier, err.message)
end_try_catch % si se ejecuta en Matlab, el "end_try_catch" debe ser solo "end".
% ¡Claro! a*b no se puede multiplicar, es 2x3 * 2x3, pero...
disp("a.*b")
a.*b
% ¡Ahora si! Aunque, lo que ha hecho es multiplicar elemento a elemento, fijate
% bien en el resultado.
%%

pause

%% 
% Pasemos a la creación de vectores.
%
% Una de las cosas mas usuales en la asignatura es crear vectores para computar 
% formulas. Por ejemplo, para la siguiente funcion: y = cos(2*pi*t).
% 
% Empecemos creando el vectores de tiempos: 

t_a = 0:10; % crea un vector fila con el siguiente contendio 
            % [0 1 2 3 4 5 6 7 8 9 10]. Ralmente lo que tenemos es 
            % y[n] = cos(2*pi*f*n/Fs) con f=1 y Fs=1. 
          
t_b =0:0.1:1; % crea un vector fila con el siguiente contendio 
              % [0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1]. Realmente lo que 
              % tenemos es y[n] = cos(2*pi*f*n/Fs) con f=1 y Fs=10. 
% Note como para crear vectores la estructura es "variable = inicio:paso:final", 
% aunque si el paso es de una unidad se puede obviar.  

y_a = cos(2*pi*t_a) % calcula y en los instantes descritos en el vector.            
y_b = cos(2*pi*t_b) 

      
% Ahora dibujermos algunas gráficas:

% stem es la que mas se usara, ya que es la indicada para sitemas discretos, que
% son los usados en la asignatura.
figure
stem(t_a,y_a)
xlabel('t(s)')
ylabel('Amplitude')

pause

% Pero tambien existen otras, como plot:
figure
plot(t_b,y_b)
xlabel('t(s)')
ylabel('Amplitude')

pause

hold on % sirve para dibujar una segunda grafica sobre la que se tenga activo el foco.
plot(t_b,y_b,'ro') % usa el rojo, y solo dibuja círculo donde realmente hay un 
                    % dato. Si te fijas, esta funcionalidad es parecida a stem.

pause

%vamos a comprobarlo:
figure
stem(t_b,y_b)
xlabel('t(s)')
ylabel('Amplitude')

pause
hold on
plot(t_b,y_b,'ro')

pause
plot(t_b,y_b,'--k')
 
pause   
% Tambien se pueden mezclar de varias longitudes y tipos:
figure
plot(t_b,y_b,'o')
hold on
stem(t_a,y_a)
plot(0:0.01:10,cos(2*pi*(0:0.01:10)),'--k')
xlabel('t(s)')
ylabel('Amplitude')
%%

pause

%%
% En este subapartado, veremos como se crea una funcion. Para ello abre my_cos.m,
% leelo, y vuelve aqui.
disp("Abre el fichero my_cos.m")
pause

[y1, t1] = my_cos(0,100,8,256);
%¿Que esta haciendo la linea superior?

figure 
plot(t1,y1)
xlabel('t(s)')
ylabel('Amplitude')

pause
% No se puede apreciar la senoidal, ¿verdad?.  Intentaremos remediarlo:
axis([5 7 -Inf Inf])
% axis es para modificar los ejes de la grafica. En este caso, estamos pidiendo 
% que se centre entre x=5 y x=7, sin limite inferior en "y", y sin limite 
% superior en "y", por lo que centrara entre el minimo y el maximo de este eje 
% dentro del intervalo indiciado.

pause
%%
% Ademas de la creacion de vectores y representarlos, debemos saber recorrerlos. 
% Por ejemplo si tenemos el vector h de tamaño M siguiente:

M=15;
h =  rand(1,M);

% Y queremos un una copia con los mismos elementos pero en orden inverso, la
% primera solucion que se os ocurrira es del estilo de la siguiente:
h_copia = zeros(1,M); % crea un vector de tamaño M con ceros.

for i=1:M; % Fijate: se crea un vector tras el for, equivale a for(i=1;i<=M;i++)
  h_copia(i) = h(M-i+1);
end

% Sin embargo, esta solución no es optima, la siguiente, si. Veamos:

h_copia2 = h(end:-1:1);

% El end dentro del parentesis de acceso a una matriz es "un puntero" al ultimo
% elemento. Por tanto le estamos diciendo: recorre h desde el final hacia el 
% principio, con un paso de un elemento, hasta que llegues a 1.

pause 
% Comprobemos su eficiencia
M = 1000000;
h =  rand(i,M);


tic ; % contador de tiempo a 0
h_copia = zeros(1,M); % crea un vector de tamaño M con ceros.

for i=1:M;
  h_copia(i) = h(M-i+1);
end
m1=toc;% diferencia con tic

tic;
h_copia2 = h(end:-1:1);
m2=toc;

disp("El metodo 1 ha tardado:")
m1
disp("El metodo 2 ha tardado:")
m2
disp("m1/m2:")
m1/m2

% Imagina usar el metodo 1 con una imagen de 48 Mpx, ¡que es 144 veces mas grande
% que el ejemplo!
disp("Estimacion de tiempo (en segundos) para procesar una imagen de 48Mpx");
disp("Metodo 1:")
m1*144
disp("Metodo 2:")
m2*144


