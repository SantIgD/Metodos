function y = Taylor_exp (x , n)
// Entrada : x numero ral ; n numero natural
// Salida : valor de evaluar el Taylor de exp (x) centrado en v=0 en el punto x.
coef = [0: n]
coef = 1./( factorial ( coef ))
p = poly (coef, "x", "coeff")
y = horner (p ,x)
endfunction


// Testeo en e^2

disp(Taylor_exp(-2,10),"e^-2 aproximado por polinomios de taylor en grado 10 en torno al 0 es:")
