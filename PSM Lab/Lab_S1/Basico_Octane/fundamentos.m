# Limpiar pantalla
clc;

#Si ponemos el ; después del comando este no aparece en pantalla

# Operaciones basicas
#https://docs.octave.org/v4.4.0/Arithmetic-Ops.html

5+5
5*5
5-5
5%5
5/5


# Variables y estrcturas de datos
# Para octave todas las variables son matrices de alguna dimension
# en el caso de una variable simple es una matriz de 1x1
numero=4
raiz = sqrt(16)

# La variable de consola ans es una variable por defecto de octave
# que almacena el resultado de la ultima operación por consola
sqrt(4);
8/ans

# Para ahorrar espacio y tiempo podemos asignar multiples variables
# de forma simultanea

a = 2; b = 7; c = a * b

# Visualizar las variable declaradas en el scope actual
who # vista simple
whos # vista ampliada

# Liberar variables del scope actual
clear a
clear

#Numero largos

velocidad_inicial = 0;
aceleracion = 9.8;
tiempo = 20;
velocidad_final = velocidad_inicial + aceleracion * tiempo

format long
x = 7 + 10/3 + 5 ^ 1.2

format short
x = 7 + 10/3 + 5 ^ 1.2

format bank
diario = 177.45;
semanal = diario * 6

format short e
4.678 * 4.9

format long e
x = pi

format rat
4.678 * 4.9

#Vectores
vector_array = [7 8 9 10 11]

r = [7 8 9 10 11];
t = [2, 3, 4, 5, 6];
res = r + t

vector_columna = [7;  8;  9;  10; 11]

#Matrices

matriz = [1 2 3; 4 5 6; 7 8 9]

# Comando utiles

#clc	limpia la salida  de consola
#clear	elimina variables del scope actual
#exist	verifica que existe una variable o fichero
#global	declara una variable como global
#help
#lookfor
#quit	Stops MATLAB.
#who	lista las variables en el scope
#whos	lista y muestra informacion de las variables en el scope

clc;
estudiantes = 6000;
docentes = 150;
personal = 20;
total = estudiantes+docentes+personal;
disp(total)

# Tipo de variables
str = 'Hello World!'
n = 2345.98
d = double(n)
un = uint32(789.50)
rn = 5678.92347
c = int32(rn)

# Funciones para identificar tipos de datos
x = 3
isinteger(x)
isfloat(x)
isvector(x)
isscalar(x)
isnumeric(x)

x = 23.54
isinteger(x)
isfloat(x)
isvector(x)
isscalar(x)
isnumeric(x)

x = [1 2 3]
isinteger(x)
isfloat(x)
isvector(x)
isscalar(x)

x = 'Hello'
isinteger(x)
isfloat(x)
isvector(x)
isscalar(x)
isnumeric(x)

# Estructuras condicionales
#
nota=3
if nota>=3
   disp("Apruebas las práticas")
end

final = 1;
   if final < 3
      fprintf('La nota es muy baja estas suspenso\n' );
   end
fprintf('La nota de práticas es: %d\n', final);

feliz = 10;
   if feliz < 3
      fprintf('La nota es muy baja estas suspenso\n' );
   else
       fprintf('La nota te permite aprobar.\n' );
   end
fprintf('La nota de práticas es: %d\n', feliz);

feliz = 10;
   if feliz < 3
      fprintf('La nota es muy baja estas suspenso\n' );
   elseif feliz < 3 && feliz > 7
       fprintf('La nota te permite subir la media.\n' );
   elseif feliz >7
       fprintf('El futuro de la ingeniería es tuyo.\n' );
   end
fprintf('La nota de práticas es: %d\n', feliz);

grade = 'B';
   switch(grade)
   case 'A'
      fprintf('Excellent!\n' );
   case 'B'
      fprintf('Well done\n' );
   case 'C'
      fprintf('Well done\n' );
   case 'D'
      fprintf('You passed\n' );
   case 'F'
      fprintf('Better try again\n' );
   otherwise
      fprintf('Invalid grade\n' );
   end

  # Bucles

  a = 10;
while( a < 20 )
   fprintf('Valor: %d\n', a);
   a = a + 1;
end

for a = 10:20
   fprintf('Valor: %d\n', a);
end

#Comando avanzados de vectores
rv = [1 2 3 4 5 6 7 8 9];
sub_rv = rv(3:7)

# Suma de vectores
A = [7, 11, 15, 23, 9];
B = [2, 5, 13, 16, 20];
C = A + B;
D = A - B;
disp(C);
disp(D);

# Producto por un escalar
v = [ 12 34 10 8];
m = 5 * v

# Trasponer
r = [ 1 2 3 4 ];
tr = r';
v = [1;2;3;4];
tv = v';
disp(tr); disp(tv);

# Unir vectores
r1 = [ 1 2 3 4 ];
r2 = [5 6 7 8 ];
r = [r1,r2]
rMat = [r1;r2]

c1 = [ 1; 2; 3; 4 ];
c2 = [5; 6; 7; 8 ];
c = [c1; c2]
cMat = [c1,c2]

# Operaciones matrices
a = [ 1 2 3 4 5; 2 3 4 5 6; 3 4 5 6 7; 4 5 6 7 8]
a(2,5)

#sub vector
v = a(:,4)

#sub matrix
a = [ 1 2 3 4 5; 2 3 4 5 6; 3 4 5 6 7; 4 5 6 7 8];
a(:, 2:3)

a = [ 1 2 3 4 5; 2 3 4 5 6; 3 4 5 6 7; 4 5 6 7 8];
sa = a(2:3,2:4)

#borrar elementos
a = [ 1 2 3 4 5; 2 3 4 5 6; 3 4 5 6 7; 4 5 6 7 8];
disp(a)
a( 4 , : ) = []

#funciones
maximo(1,2,3,4,5)

global TOTAL;
TOTAL = 10;
n = [34, 45, 25, 45, 33, 19, 40, 34, 38, 42];
av = media(n)









