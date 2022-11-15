%Esercitazione 3

clc

%chiedo di inserire una dimensione per la matrice e salvo nella variabile n
n = input('Inserire dimensione della matrice: \n');

%Creo matrice quadrata di dimensione n ed elementi pseudo casuali tra 0 e 1
fprintf("Creo la matrice R:\n");
R = rand(n);
disp(R);

%estraggo la diagonale della matrice R e la salvo nel vettore x
fprintf("Estraggo la diagonale da R e la salvo nel vettore x:\n")
x = diag(R);
disp(x);

%Inserisco la diagonale estratta nella matrice D
fprintf("Creo la matrice D che ha nella diagonale gli elementi del vettore x: \n");
D = diag(x);
disp(D);

%estraggo la parte triangolare superiore della matrice R e la salvo nella
%matrice U
fprintf("Estraggo la parte triangolare superiore della matrice R" + ...
    " e la salvo nella matrice U: \n");
U = triu(R);
disp(U);

%estraggo la parte triangolare inferiore della matrice R e la salvo nella
%matrice L
fprintf("Estraggo la parte triangolare inferiore della matrice R" + ...
    " e la salvo nella matrice L: \n");
L = tril(R);
disp(L);

%Controllo se D è diagonale
if(isdiag(D) == 1)
    fprintf("La matrice D è diagonale.\n");
else
    fprintf("La matrice D non è diagonale\n");
end

%Controllo se U è triangolare superiore
if(istriu(U) == 1)
    fprintf("La matrice U è triangolare superiore.\n");
else
    fprintf("La matrice U non è triangolare superiore.\n");
end

%Controllo se L è triangolare inferiore
if(istril(L) == 1)
    fprintf("La matrice L è triangolare inferiore.\n");
else
    fprintf("La matrice L non è triangolare inferiore.\n");
end