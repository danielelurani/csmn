function [x,k, rho] = gs_rho(A,b,tol,kmax,x0)

%copia esatta della funzione gs che restituisce in più il raggio spettrrale

%questa funzione calcola l'approssimazione di x tramite l'algoritmo di
%Gauss-Siedel

%gli input sono matrice (A), vettore di termini noti (b), tolleranza (tol),
%un numero massimo di iterazioni (kmax) e un vettore iniziale (x0)

%gli output sono l'approssimazione della soluzione (x) e il numero di passi
%effettuati (k)

%estraggo diagonale A
D = diag(diag(A));

%matrice triangolare inferiore E
E = -tril(A,-1);

%matrice triangolare superiore F
F = -triu(A,1);

%creo matrice di iterazione di gauss-siedel
Bgs = (D-E)\F;
f = (D-E)\b;

%raggio spettrale
rho = max(abs(eig(Bgs)));

%passi del metodo gs
x_old = x0;
x_new = Bgs*x_old + f;

%l'algoritmo continua finchè non si verifica la convergenza con la
%tolleranza. Criterio di cauchy per determinare il criterio di arresto
%k indice per contare le iterazioni
k = 1;
while (norm(x_new-x_old)>tol*norm(x_old)) && (k<kmax)
    k = k+1;
    x_old = x_new;
    x_new = Bgs*x_old + f;
end

if (k>=kmax)
    warning('Raggiunto il numero massimo di iterazioni')
end

x = x_new;