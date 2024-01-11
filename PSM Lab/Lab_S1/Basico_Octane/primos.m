for i = 2:100
   for j = 2:100
      if(~mod(i,j))
         break; % si tienen un divisor comun no es primo
      end
   end
   if(j > (i/j))
      fprintf('%d es primo\n', i);
   end
end
