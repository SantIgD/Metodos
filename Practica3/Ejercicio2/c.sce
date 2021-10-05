format(10);

function output = f0(x)
   
    output = 0;
endfunction

function output = fc(x)
   
    output = log(x)- x + 1;
endfunction
v = linspace(0.8,1.2,20);
plot(v,f0,'r', v,fc,'b');

c1 =  biseccion("log(x)- x + 1",-0.5,0,10^-2);
disp(c);
//si es el logn, no tiene sentido usar el metodo, la raiz es 1



