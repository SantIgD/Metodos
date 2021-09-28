
function output = nula(x)
    output = 0
endfunction

function output = f(x)
    
    deff("y=cosh(x)","y=( %e^(x) + %e^(-x) ) / 2 ");
    output = cos(x) * cosh(x) + 1;
endfunction





v = linspace(-5,8,50);
plot(v,nula,'r', v,f,'b');

// No tiene raices xd
