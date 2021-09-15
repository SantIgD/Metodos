function [b] = Horner(a,x_0)
    //Entrada: a = vector coeficientes del polinomio 'p' ordenados de menor grado a mayor; x_0 = valor real
    //Salida: b = evaluacion de p(x_0)
    
    n = length(a); //n = grado de p + 1
    b = a(n);
    for (i = 1 : n-1) do
        b = a(n-i) + x_0*b; 
    end
endfunction

// Ejemplo de prueba

a = [4,-3,5,6];
x_0 = 4;
p_x0 = Horner(a,x_0);
p = poly(a, "x", "coeff");
p_x0_scilab = horner(p,x_0);
disp("p_x0 = " + string(p_x0));
disp("p_x0_siclab = " + string(p_x0));
