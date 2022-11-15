%Esercitazione 4 punto 4
clc

%variabili che contengono gli errori relativi ad ogni iterazione
errj = zeros(10,1);
errgs = zeros(10,1);

%variabili che contengono il raggio spettrale ad ogni iterazione
rhogs = zeros(10,1);
rhoj = zeros(10,1);

i = 0;
for n = 100:100:1000

    fprintf('Calcolo con matrice dimensione %d ... ',n);

    i = i+1;
    A = rand(n);
    A = A-diag(diag(A));    %matrice senza diagonale
    s = abs(A)*ones(n,1);   %somme riga
    p = 2;                  %fattore di predominanza
    A = A+diag(100*s);      %matrice diagonalmente dominante

    x = ones(n,1);
    b = A*x;
    
    tol = 1e-6;
    
    %chiamo funzioni jacobi e gauss seidel
    [xj,kj,rhoj(i)] = jacobi_rho(A,b,tol,100,zeros(n,1));
    [xgs,kgs,rhogs(i)] = gs_rho(A,b,tol,100,zeros(n,1));
  
    %calcolo errore realtivo
    errj(i) = norm(xj-x)/norm(x);
    errgs(i) = norm(xgs-x)/norm(x);

    fprintf('OK\n');

end

fprintf(['------------------------------------------------------------------------' ...
    '--------------------------------------------\n'])
fprintf('\t\t\t\t\t\t\t\t\tTabella errore relativo e raggio spettrale\n');
fprintf(['------------------------------------------------------------------------' ...
    '--------------------------------------------\n'])

fprintf(['Dimensione matrice \t\t Errore relativo J \t\t Errore relativo GS ' ...
    '\t Raggio spettrale J \t Raggio spettrale GS\n '])

for i = 1 : 10
    fprintf('\t %d \t\t\t\t %e \t\t\t %e \t\t\t %e \t\t\t %e \n', (i*100),errj(i),errgs(i),rhoj(i),rhogs(i));
end

fprintf(['------------------------------------------------------------------------' ...
    '--------------------------------------------\n'])


