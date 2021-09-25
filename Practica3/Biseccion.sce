
//Entrada:
//  fun   : Ley de la función pasada como string
//  alpha : Inicio del intervalo, negativo
//  omega : Fin del intervalo, positivo
//  tol   : error permitido

function salida = biseccion(fun, alpha, omega, tol)
    
    // definimos la funcion fun como f
    deff("y=f(x)","y="+fun);
    
    // Primer paso del metodo
    f_en_a = f(alpha);
    f_en_b = f(omega);
    a      = alpha;
    b      = omega;   
    c      = (a + b) / 2;
    
    
    if f_en_a * f_en_b >= 0 then
        abort = 1; // no tiene sentido aplicar el método
    else
        abort = 0;         
    end
    
    f_en_c = f(c);
    
    while ( abort == 0 && abs(f_en_c) > tol )
        if ((f_en_a * f_en_c) < 0) then // signo de f(c) opuesto a f(a) 
            b = c; 
            f_en_b = f_en_c;
        else //  signo de f(c) opuesto a f(b)
            a = c; 
            f_en_a = f_en_c;
        end
        
        c      = (a + b) / 2;
        f_en_c = f(c);
        
    end
    
    if (abort == 1) then disp('Quedaron las dos funciones del mismo signo'); end
    salida = c;
endfunction