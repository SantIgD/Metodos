function y = cos_n(x0,n)
   // Entrada: 
    // x0 = valor real; 
    // n  = numero natural;
   // Salida:
    // y = valor obtenido de aplicar n veces la funcion coseno al punto x0
    
    y = x0
    
    for (i = 1 : n)
        y = cos(y);
    end
endfunction
