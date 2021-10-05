
function output = nula(x)
    output = 0
endfunction

function output = f(x)
    
    deff("y=cosh(x)","y=( %e^(x) + %e^(-x) ) / 2 ");
    output = cos(x) * cosh(x) + 1;
endfunction





v = linspace(1.5,8,50);
plot(v,nula,'r', v,f,'b');


//Las raices aproximadas graficamente son

// 2.3, 4.7, 7.8
