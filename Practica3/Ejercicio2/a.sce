format(10);

function output = f0(x)
   
    output = 0;
endfunction

function output = fa(x)
   
    output = sin(x)-x^2/2;
endfunction


v = linspace(-2,2,20);
plot(v, f0,'r', v, fa,'b');
a1 =  biseccion("sin(x)-x^2/2",-0.2,0.8,10^-2);
a2 =  biseccion("sin(x)-x^2/2",1,2,10^-2);
disp("Raiz 2 en entorno (1,2): " + string(a2), "Raiz 1 en entorno (-0.2,0.8): " + string(a1), "Ley: sin(x)-x^2/2");

 
// Ley: sin(x)-x^2/2

// Raiz 1 en entorno (-0.2,0.8): -0.0046875

// Raiz 2 en entorno (1,2): 1.3984375

