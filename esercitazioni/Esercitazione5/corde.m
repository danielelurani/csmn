function [x,k] = corde(fun,m,x0,tol,kmax)

%questa funzione calcola l'approssimazione di x tramite il metodo delle
%corde

%gli input sono la funzione fun, il valore m della pendenza della retta,
% il valore iniziale x0, la tolleranza tol e 
% il numero massimo di iterazioni kmax

%gli output sono l'approssimazione della soluzione (x) e il numero di passi
%effettuati (k)


%controllo se il valore assoluto della funzione in x0 è minore di un valore
%di controllo piccolissimo ( se x0 è una buona approssimazione della
%radice)
k = 0;
f0 = fun(x0);
if(abs(f0) < 1e-32)
    x = x0;
    return
end

%controllo che m non sia nullo
if(abs(m) < 1e-32)
        error('Il coefficiente angolare è nullo! Cambia punto di partenza!');
end

%se vado oltre x0 non era una buona approssimazione
%calcole le iterazioni

k = 1;
xNew = x0 - ((f0)/m);

flag = 1;
while flag
    
    k = k + 1;
    x0 = xNew;              %sovrascrivo vecchio x0
    f0 = fun(x0);           %calcolo valore fun nel nuovo x0
    xNew = x0 - ((f0)/m);   %ricalcolo

    %%il ciclo continua finchè tutte le condizioni sono verificate
    flag = (abs(xNew-x0) > tol * abs(x0)) && (k < kmax) && (abs(fun(xNew)) > 1e-32);
end

%in caso si raggiunga il numero massimo di iterazioni
if (k>=kmax)
    warning('N. massimo di iterazioni raggiunto');
    x = inf;
else
    x = xNew;
end
