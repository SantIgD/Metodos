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
    f_en_c = f(c);
    
    while (abs(f_en_c) > tol)
        
        if ((f_en_a * f_en_c) < 0) then
            b = c; // f(c) positivo
        else
            a = c; // f(c) negativo
            f_en_a = f_en_c;
        end
        
        c      = (a + b) / 2;
        f_en_c = f(c);
        
    end
    
    if (abs(f_en_c) > tol) then disp(i,'Se alcanzo el máximo de iteraciones'); end
    salida = c;
endfunction
