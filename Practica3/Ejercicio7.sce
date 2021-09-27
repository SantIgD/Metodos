//Entrada:
//  fun  : Ley de la función pasada como string
//  x0   : punto en donde se aproximara, estimación de la raíz
//  tol  : error permitido
//  iter : cantidad de iteraciones máximas del método

function salida = newton(fun,x0,tol,iter)
    
    // definimos la funcion fun como f
    deff("y=fnew(x)","y="+fun);
    
    // contador para saber en que iteracion estamos
    i = 0;   
    
    // Primer paso del metodo
    x1 = x0 - fnew(x0)/numderivative(fnew,x0);
    
    disp(fnew(x1),numderivative(fnew,x1),x1,"x1")
    
    while abs(x1-x0)>tol && i < iter
        i = i+1;
        x0 = x1;
        x1 = x0 - fnew(x0)/numderivative(fnew,x0)
    end
    
    if (abs(x1-x0)> tol) then disp('Se alcanzo el máximo de iteraciones'); end
    salida = x1;
endfunction

 
function output = ptoFijo(ley, valorInicial, cantIteraciones)
    // definimos la funcion ley como fptofijo
    deff("y=fptofijo(x)","y="+ley);
    
    
    for i = 1 : cantIteraciones
        valorInicial = fptofijo(valorInicial);
    end
    
    output = valorInicial;
    
endfunction

//a)
T = 5;
w = 2*%pi/T;
g = 9.8;
h = 4;

function output = f(x)
    // x = l
    output = x + g * (2*%pi/x) * tanh(h*(2*%pi/x)) - w^2;
endfunction

function output = f1(x)
    // x = l
    output = g * (2*%pi/x) * tanh(h*(2*%pi/x)) - w^2;
endfunction

function output = id(x)
   
    output = x;
endfunction

function output = f0(x)
   
    output = 0;
endfunction


v = linspace(27,30,50);
plot(v,f0,'r', v,f1,'b');



a = ptoFijo("x + g * (2*%pi/x) * tanh(h*(2*%pi/x)) - w^2",2*%pi,1000)

disp(a);// 27

b = newton("- g * (2*%pi/x) * tanh(h*(2*%pi/x)) + w^2",27,%eps,50)


disp(b)



