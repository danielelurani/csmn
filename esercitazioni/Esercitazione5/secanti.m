function [x,k] = secanti(fun,x0,x1,tol,kmax)

%questa funzione calcola l'approssimazione di x tramite il metodo delle
%secanti

%gli input sono la funzione fun, i valori iniziali x0 e x1,
% la tolleranza tol e il numero massimo di iterazioni kmax

%gli output sono l'approssimazione della soluzione (x) e il numero di passi
%effettuati (k)

%controllo se il valore assoluto della funzione in x0 è minore di un valore
%di controllo piccolissimo ( se x0 è una buona approssimazione della
%radice)
k = 0;
f0 = fun(x0);
f1 = fun(x1);

%calcolo coefficiente angolare
m = (f1 - f0) / (x1- x0);

if(m < 1e-32)
    x = x1;
    return
end

%controllo che il denominatore non sia nullo
if(abs((f1 - f0)) < 1e-32)
        warning('Errore! Cambia punti di partenza!');
end

%calcolo le iterazioni

k = 0;


flag = 1;
while flag

    k = k + 1;
    xNew = ((x0*f1) - (x1*f0)) / (f1 - f0);

    f0 = f1;
    f1 = fun(xNew);
    x0 = x1;
    x1 = xNew;

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