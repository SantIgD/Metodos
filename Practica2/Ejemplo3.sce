function r = misraices(p)
c = coeff(p,0);
b = coeff(p,1);
a = coeff(p,2);
r(1) = (-b + sqrt(b^2-4*a*c))/(2*a);
r(2) = (-b - sqrt(b^2-4*a*c))/(2*a);
endfunction


