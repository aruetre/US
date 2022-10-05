function [y, t] = my_sin(t_ini, t_fin, f, Fs)
% Variables de entrada:
% t_ini: instante de tiempo inicial
% t_fin: instante de tiempo final
% f: frecuencia de la sinusoidal
% Fs: frecuencia de muestreo
% Variables de salida:
% y: valores del coseno a la frecuencia dada, entre los instantes iniciales y
%    finales, muestreados a Fs.
% t: vector de tiempo.
  t=t_ini:1/Fs:t_fin;
  y=sin(2*pi*f*t);
  % La version implementada es y[n] = cos(2*pi*f*(n/Fs)) siendo t = n/Fs
  % ¿Sabrias sacar la version alternativa y[n] = cos(2*pi*(f/Fs)*n)


  % A diferencia de otros lenguajes de programación, Octave "no usa" return,
  % para devolver los elementos necesarios, es suficiente con declararlos en
  % la parte superior, fíjate en el [y, t]
endfunction
