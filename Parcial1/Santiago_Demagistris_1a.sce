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
disp(aprox,"Valor aproximado por taylor en orden 5: ",valorReal, "Valor Real: ","e^3");

// e^3

// Valor Real: 

//   20.085537

// Valor aproximado por taylor en orden 5: 

//   18.399994




// Ej1 a

aproxCos = Taylor("cos(x)",5,0,0.5,0.01);
valorReal = cos(0.5);
errRel = abs(valorReal - aproxCos) / abs(valorReal);
disp(errRel,"El error relativo es: ",aproxCos,"Valor aproximado por taylor en orden 5: ",valorReal, "Valor Real: ","cos(0.5)","Ej 1a");




//Ej 1a

// cos(0.5)

// Valor Real: 

//   0.8775826

// Valor aproximado por taylor en orden 5: 

//   0.8776042


// Vemos que en 3 cifras significativas los numeros son coincidentes
//
// El error relativo es: 

//   0.0000246
