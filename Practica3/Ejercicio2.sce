
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
    
    if f_en_a * f_en_b >= 0 then
        abort = 1;
    else
        abort = 0;
        a      = alpha;
        b      = omega;
        c      = (a + b) / 2;
        f_en_c = f(c);
                
    end
    

    while (abs(f_en_c) > tol && abort == 0)
        
        if ((f_en_a * f_en_c) < 0) then
            b = c; // f(c) positivo
            f_en_b = f_en_c;
        elseif ((f_en_b * f_en_c) < 0) then
            a = c; // f(c) negativo
            f_en_a = f_en_c;
        else
            abort = 1;
        end
        
        c      = (a + b) / 2;
        f_en_c = f(c);
        
    end
    
    if (abort == 1) then disp('Quedaron las dos funciones del mismo signo'); end
    salida = c;
endfunction

function output = fa(x)
   
    output = sin(x)-x^2/2;
endfunction
// a)
plot(linspace(-1,1,20),fa)
a =  biseccion("sin(x)-x^2/2",-4,10,4)
disp(a)



