
function output = f0(x)
   
    output = 0;
endfunction
function output = fb(x)
   
    output = %e^(-x) - x^4;
endfunction

plot(linspace(0.5,1,20),fb);

v = linspace(-2,2,20);
plot(v,f0,'r', v,fb,'b');
b1 =  biseccion("%e^(-x) - x^4",-2,-1,10^-2);
b2 =  biseccion("%e^(-x) - x^4",0.5,1.5,10^-2)
disp("Raiz 2 en entorno (0.5,1.5): " + string(b2), "Raiz 1 en entorno (-2,-1): " + string(b1), "Ley: %e^(-x) - x^4");

// Ley: %e^(-x) - x^4

// Raiz 1 en entorno (-2,-1): -1.4296875

// Raiz 2 en entorno (0.5,1.5): 0.8203125
