function [x,k] = bisec(fun,a,b,tol,kmax)

%help

fa = fun(a);
fb = fun(b);

if (fa*fb > 0)
    error('Intervallo sbagliato!')
end

k = 1;
c = (a+b)/2;
fc = fun(c);

if (abs(fc) < 1e-32)
    x = c;
    return
end

flag = 1;
while (flag~=0)
    k = k+1;
    if (fa*fc < 0)
        b = c;
        fb = fc;
    else
        a = c;
        fa = fc;
    end
    c = (a+b)/2;
    fc = fun(c);
    
    flag = (abs(b-a) > tol) && (k<kmax) && (abs(fc)>1e-32);
end

if (k>=kmax)
    warning('N. massimo di terazioni raggiunto')
    x = inf;
elseif (abs(fc)<=1e-32)
    x = c;
else
    x = (a+b)/2;
end


    
    
    


