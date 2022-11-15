function [x,k] = newton(fun,fund,x0,tol,kmax)

%questa funzione calcola l'approssimazione di x tramite il metodo di newton

%gli input sono la funzione fun, la derivata fund,
% il valore iniziale x0, la tolleranza tol e 
% il numero massimo di iterazioni kmax

%gli output sono l'approssimazione della soluzione (x) e il numero di passi
%effettuati (k)

k = 0;
f0 = fun(x0);
if (abs(f0) < 1e-32)
    x = x0;
    return
end

fd = fund(x0);
if (abs(fd)<1e-32)
    error('La derivata si annulla in x0! Cambia punto di partenza');
end
   
k = 1;
x_new = x0 - (f0/fd);

flag = 1;
while flag
    k = k+1;
    x0 = x_new;
    f0 = fun(x0);
    fd = fund(x0);
    if (abs(fd)<1e-32)
        warning('La derivata si annulla nel punto! Cambia x0');
    end  
    x_new = x0 - (f0/fd);
    flag = (abs(x_new-x0)>tol*abs(x0)) && (k<kmax) && (abs(fun(x_new))>1e-32); 
end

if (k>=kmax)
    warning('N. massimo di iterazioni raggiunto');
    x = inf;
else
    x = x_new;
end
    
