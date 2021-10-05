
//Entrada:
//  fun   : Ley de la función pasada como string
//  alpha : Inicio del intervalo, negativo
//  omega : Fin del intervalo, positivo
//  tol   : error permitido

function salida = biseccion(fun, alpha, omega, tol)
    
    // definimos la funcion fun como f
    deff("y=f(x)","y="+fun);
    
    f_en_a = f(alpha);
    f_en_b = f(omega);
    
    if f_en_a * f_en_b >= 0 then
        disp("El intervalo ingresado no cumple la premisa");
    else
         // Primer paso del metodo
        a      = alpha;
        b      = omega;   
        c      = (a + b) / 2;
        
        while ( b-c > tol )
        
            f_en_c = f(c);
            
            if ((f_en_a * f_en_c) < 0) then // signo de f(c) opuesto a f(a) 
                b = c; 
                f_en_b = f_en_c;
            else                            //  signo de f(c) opuesto a f(b)
                a = c; 
                f_en_a = f_en_c;
            end
            
            c      = (a + b) / 2;
        end
        salida = c;   
    end
        
    
endfunction
