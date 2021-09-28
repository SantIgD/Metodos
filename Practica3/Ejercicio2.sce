format(10);
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

function output = f0(x)
   
    output = 0;
endfunction
// a)
function output = fa(x)
   
    output = sin(x)-x^2/2;
endfunction


v = linspace(-2,2,20);
plot(v,f0,'r', v,fa,'b');
a1 =  biseccion("sin(x)-x^2/2",-0.2,0.8,10^-2);
a2 =  biseccion("sin(x)-x^2/2",1,2,10^-2);
disp(a2,a1);

//b)
function output = fb(x)
   
    output = %e^(-x) - x^4;
endfunction

//plot(linspace(0.5,1,20),fb);

//v = linspace(-2,2,20);
//plot(v,f0,'r', v,fb,'b');
//b1 =  biseccion("%e^(-x) - x^4",-2,-1,10^-2);
//b2 =  biseccion("%e^(-x) - x^4",0.5,1.5,10^-2)
//disp(b2,b1);

//c)
function output = fc(x)
   
    output = log(x)- x + 1;
endfunction
//v = linspace(0.8,1.2,20);
//plot(v,f0,'r', v,fc,'b');

//c1 =  biseccion("log(x)- x + 1",-0.5,0,10^-2);
//disp(c);
//si es el logn, no tiene sentido usar el metodo, la raiz es 1



