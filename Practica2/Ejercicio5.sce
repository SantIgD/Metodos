// usando numderivative
// funcion f es la ley de la función dada por un string, usa como 
// variable x
// v es el valor donde se evaluará la derivada
// n es el orden de derivación
// h es el paso de derivación
// usa orden 4
function valor = derivadaNum(f,v,n,h)
    deff("y=DF0(x)","y="+f);
    if n==0 then valor = DF0(v);
    else
        for i=1:(n-1)
        deff("y=DF"+string(i)+"(x)","y=numderivative(DF"+string(i-1)+",x,"+string(h)+",4)");
        end
        deff("y=DFn(x)","y=numderivative(DF"+string(n-1)+",x,"+string(h)+",4)");
        valor = DFn(v);
    end
endfunction

// Argumentos:
// f: Funcion a aproximar dada su ley como string
// n: grado de aproximacion
// a: entorno en el que se aproxima
// v: valor que se busca aproximar
// h: paso de derivacion
function valor = Taylor(f,n,a,v,h)
    deff("y=f0(x)","y="+f);
    valor = f0(a);
    for (i=1 : n)
        valor = valor + (derivadaNum(f,a,i,h)*(v-a)^i) / factorial(i);
    end
endfunction

//Ejemplo

aprox = Taylor("%e^x",5,0,3,0.01);
valorReal = %e^3;
disp(aprox,"Valor Aproximado: ",valorReal, "Valor Real: ");


