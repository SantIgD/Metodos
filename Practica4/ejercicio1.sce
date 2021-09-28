///Ejercicio1
//chequaedo
function x=Res_triang_sup(A,b)
    [n,rest]=size(b);
    x(n)=b(n)/A(n,n);
    for i=n-1:-1:1
        suma=0;
        for j=i+1:n
            suma=suma+x(j)*A(i,j);
        end
        x(i)=(b(i)-suma)/A(i,i);
    end
endfunction



function x=Res_triang_inf(A,b)
    [n,rest]=size(b);
    x(1)=b(1)/A(1,1);
    for i=2:n
        suma=0;
        for j=1:i-1
            suma=suma+x(j)*A(i,j);
        end
        x(i)=(b(i)-suma)/A(i,i);
    end
endfunction

matriz=[2,0;5,1];
b=[3;4];

disp(matriz*Res_triang_inf(matriz,b));
