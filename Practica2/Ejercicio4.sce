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
x0 = 4;
q = x^3 + x^2 + x^1;
p = 6*x + 2;
p_en_x0 = horner(p,x0);
aDNum = derivadaNum("x^3+x^2+x",4,2,0.01);
disp(aDNum, "derivadaNum(p,4,3,0.01) : ");
errorRel_1 = abs(p_en_x0-a) / p_en_x0; 
errorRel_2 = abs(p_en_x0-aDNum) / p_en_x0;
disp(errorRel_2,"El error relativo de derivadaNum es:", errorRel_1,"El error relativo de derivada es:");

//a) 
//La 2da derivada de q: 

//       2   3
//   x +x  +x 

// es: 

        
//   2 +6x

// evaluada en 4: 

//   26.

// derivada(p,4,3,0.01) : 

//   26.06

// derivadaNum(p,4,3,0.01) : 

//   26.

// El error relativo de derivada es:

//   0.0023077

// El error relativo de derivadaNum es:

//   2.496D-13

//Es decir derivadaNum tiene un error de prácticamente 0. No es 0 ya que la representación interna es diferente.

//b) El error dado en el caso del cociente incremental es mayor ya que este involucra una resta de dos magnitudes similares
// y como observamos esto conlleva a pérdidas de cifras significativas. También está presente la división que si bien el error
// relativo generado es menor al de la resta este no es nulo y a el paso h en caso de derivar muchas veces, si el h es chico en 
// la primer iteración se achicará exponencialmente de la forma h^n, siendo n el número de derivada en la cual se lo esté aplicando.
//  
