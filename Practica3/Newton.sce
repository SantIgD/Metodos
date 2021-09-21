//Entrada:
//  fun  : Ley de la función pasada como string
//  x0   : punto en donde se aproximara, estimación de la raíz
//  tol  : error permitido
//  iter : cantidad de iteraciones máximas del método

function salida = newton(fun,x0,tol,iter)
    
    // definimos la funcion fun como f
    deff("y=f(x)","y="+fun);
    
    // contador para saber en que iteracion estamos
    i = 0;   
    
    // Primer paso del metodo
    x1 = x0 - f(x0)/numderivative(f,x0);
    
    while abs(x1-x0)>tol && i < iter
        i = i+1;
        x0 = x1;
        x1 = x0 - f(x0)/numderivative(f,x0)
    end
    
    if (abs(x1-x0)> tol) then disp('Se alcanzo el máximo de iteraciones'); end
    disp(i);
    salida = x1;
endfunction
