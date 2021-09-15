// funcion f es la ley de la función dada por un string, usa como 
// variable x
// v es el valor donde se evaluará la derivada
// n es el orden de derivación
// h es el paso de derivación

function valor = derivada(f,v,n,h)
    deff("y=DF0(x)","y="+f);
    if n==0 then valor = DF0(v);
    else
        for i=1:(n-1)
        deff("y=DF"+string(i)+"(x)","y=(DF"+string(i-1)+"(x+"+string(h)+")-DF"+string(i-1)+"(x))/"+string(h));
        end
        deff("y=DFn(x)","y=(DF"+string(n-1)+"(x+"+string(h)+")-DF"+string(n-1)+"(x))/"+string(h));
        valor = DFn(v);
    end
endfunction

//Ejemplo
x = poly(0,"x");
x0 = 4
q = x^3 + x^2 + x^1;
p = 6*x + 2;
p_en_x0 = horner(p,x0)
a = derivada("x^3+x^2+x",4,2,0.01)
disp(a, "derivada(p,4,3,0.01) : ",p_en_x0,"evaluada en 4: ", p, "es: ", q, "La 2da derivada de q: ");

// usando numderivative
// esta función utiliza un orden para numderivative igual a 4
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

//Ejemplo
x = poly(0,"x");
x0 = 4
q = x^3 + x^2 + x^1;
p = 6*x + 2;
p_en_x0 = horner(p,x0)
a = derivadaNum("x^3+x^2+x",4,2,0.01)
disp(a, "derivadaNum(p,4,3,0.01) : ",p_en_x0,"evaluada en 4: ", p, "es: ", q, "La 2da derivada de q: ");

