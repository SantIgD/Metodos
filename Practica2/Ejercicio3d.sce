
function [b,c] = Hornerd(a,x_0)
    //Entrada: a = vector coeficientes del polinomio 'p' ordenados de menor grado a mayor; x_0 = valor real
    //Salida: (p(x_0),q(x_0))
    
    n = length(a); //n = grado de p + 1
    m = n-1;       //m = grado de q + 1
    
    b = a(n);
    c = (n-1)*a(n);
    
    for (i = 1 : n-2) do
        
        k = a(n-i);
        
        b = k + x_0*b;
        
        c = (n-i-1)*k +x_0*c; // (n-i-1) ya que la posición p del vector a corresponde a x^(p-1)
    end
    
    b = a(1) + x_0*b;
endfunction


// Ejemplo de prueba

a = [4,-3,5,6]; 
b = [-3,10,18];
x_0 = 4;

[p_x0, q_x0] = Hornerd(a,x_0);

p = poly(a, "x", "coeff");
q = poly(b, "x", "coeff");

p_x0_scilab = horner(p,x_0);
q_x0_scilab = horner(q,x_0);

disp("p = ");
disp(p);

disp("q = ");
disp(q);

disp("x_0 = " + string(x_0));
disp("p_x0 = " + string(p_x0));
disp("p_x0_siclab = " + string(p_x0_scilab));
disp("q_x0 = " + string(q_x0));
disp("q_x0_siclab = " + string(q_x0_scilab));

