%Esercitazione 3

clc

%chiedo di inserire una dimensione per la matrice e salvo nella variabile n
n = input('Inserire dimensione della matrice: \n');


%creo matrice quadrata A di dimensione n con soli elementi 0
A = zeros(n);

%creo matrice quadrata B di dimensione n con soli elementi 1
B = ones(n);

%{ Creo un vettore colonna z di lunghezza n con soli elementi 2 utilizzando
% un ciclo for che ad ogni iterazione aggiunge un elemento 2 al vettore %}
z = [];
for i = 0 : n-1
    z = [z ; 2];
end

% Calcolo prodotto b = A * z
b = A * z;

fprintf("Risultato del prodotto b = A * z:\n");
disp(b);

%calcolo del prodotto c = z^T * B
zT = z.';
c =  zT * B;

fprintf("Risultato del prodotto b = z^T * B:\n");
disp(c);


