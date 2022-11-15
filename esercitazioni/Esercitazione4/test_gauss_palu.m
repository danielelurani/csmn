%Esercitazione 4

clc

%prealloco la memoria per il vettore err
err = zeros(10,1);
nCond = zeros(10,1);
i = 0;

%creo 10 matrici di dimensione crescente tra 100 e 1000 con passo 100
for n = 100:100:1000
    i = i+1;
    A = rand(n);
    x = ones(n,1);
    b = A*x;
    
    %chiamo la funzione gauss_palu per eseguire la fattorizzazione pa=lu
    [P, L, U] = gauss_palu(A);
    Pb = P*b;
    y = L\Pb;
    x1 = U\y;
    
    %calcolo errore relativo
    format short
    err(i) = norm(x1-x)/norm(x);

    %calcolo numero di condizionamento
    nCond(i) = cond(A);
    
    fprintf('Errore realativo alla dimensione %d = %e', n, err(i));
    fprintf("\n");
    fprintf('Numero di condizionamento alla dimensione %d = %e', n, nCond(i));
    fprintf("\n\n");
end