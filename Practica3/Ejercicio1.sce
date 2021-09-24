
function output = identidad(x)
    output = x
endfunction

function output = f(x)
    
    deff("y=cosh(x)","y=( %e^(x) + %e^(-x) ) / 2 ");
    output = cos(x) + cosh(x) + 1;
endfunction


// 
plot(linspace(-0.3,0.3,3),f)

// No tiene raices xd
