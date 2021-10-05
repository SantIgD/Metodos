format(10);

function output = f0(x)
   
    output = 0;
endfunction

function output = fc(x)
   
    output = log(x) - (x - 1);
endfunction
v = linspace(0,10,100);
plot(v,f0,'r', v,fc,'b');
disp("Raiz: 1", "Ley: log(x) - (x - 1)");



