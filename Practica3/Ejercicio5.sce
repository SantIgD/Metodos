

function output = ptoFijo(ley, valorInicial, cantIteraciones)
    // definimos la funcion fun como f
    deff("y=f(x)","y="+ley);
    
    
    for i = 1 : cantIteraciones
        valorInicial = f(valorInicial);
    end
    
    output = valorInicial;
    
endfunction
    
function output = f(x)
   
    output = 2^(x-1);
endfunction
function output = id(x)
   
    output = x;
endfunction


v = linspace(0.5,2.5,20);
plot(v,id,'r', v,f,'b');

alpha1 = ptoFijo("2^(x-1)",1.2,50)
disp(alpha1);
alpha2 = ptoFijo("2^(x-1)",1.9,100)
disp(alpha2);
// Observando la gráfica podemos afirmar que hay 2 puntos fijos, 1 y 2, se pueden comprobar aplicandolos a la ley
// Respecto a la convergencia de iterar sobre la funcion, vemos que la ley de nuestra funcion es menor a la de la identidad
// en el intervalo [1,2], vemos que si nuestro valor inicial es en este intervalo siempre caeremos en el punto fijo alpha=1.
// Si elegimos cualquier valor anterior vemos que nuestra ley es creciente, por lo cual eventualmente llegaremos al punto fijo
// alpha=1 y si elegimos un valor inicial mayor a 2, nos iremos al infinito. Es decir el único punto fijo al que podemos llegar
// utilizando iteracion es alpha=1
