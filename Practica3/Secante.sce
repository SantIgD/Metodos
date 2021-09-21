//Entrada:
//  fun   : Ley de la función pasada como string
//  x0    : Punto desde el cual se empeiza el metodo
//  x1    : Punto desde el cual se empieza el metodo
//  tol   : error permitido
//  iter  : cantidad de iteraciones máximas del método

function salida = secante(fun, x0, x1, tol, iter)
    
    // definimos la funcion fun como f
    deff("y=f(x)","y="+fun);
    
    // contador para saber en que iteracion estamos
    i = 0;
    
    // Primer paso del metodo
    f_en_x0 = f(x0);
    f_en_x1 = f(x1);
    x2      = x1 - f_en_x1 * (x1 - x0) / (f_en_x1 - f_en_x0);  
    f_en_x2 = f(x2);
    
    while (abs(f_en_x2) > tol) && (i < iter)
        i = i+1;
        
        x0      = x2;
        
        x2      = x2 - f_en_x2 * (x2 - x1) / (f_en_x2 - f_en_x1) ;
        
        x1      = x0;
        f_en_x1 = f_en_x2;
        f_en_x2 = f(x2);
        
    end
    if (abs(f_en_x2) > tol) then disp(i,'Se alcanzo el máximo de iteraciones'); end
    salida = x2;
endfunction
