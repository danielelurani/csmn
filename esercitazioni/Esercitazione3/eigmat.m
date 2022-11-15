%Esercitazione 3

clc

%chiedo di inserire una dimensione per la matrice e salvo nella variabile n
n = input('Inserire dimensione della matrice: \n');

%creo una matrice S di dimensione n composta da elementi pseudo-casuali
%interi compresi tra 10 e 20
fprintf("Creo una matrice S di dimensione n composta da elementi\n" + ...
    "pseudo-casuali interi compresi tra 10 e 20:\n");
S = randi([10, 20], n);
disp(S);

%Controllo se la matrice S è simmetrica e in caso non lo fosse la rendo
%simmetrica
if(issymmetric(S) == false)
    fprintf("S non è simmetrica, la rendo simmetrica.\n");
    ST = S.';
    S = (S + ST)/2;
    disp(S);
else
    fprintf("S è simmetrica.\n");
end

%calcolo gli autovalori della matrice S e li salvo nel vettore d
fprintf("Calcolo gli autovalori della matrice S e li salvo nel vettore d:\n");
d = eig(S);
disp(d);

%calcolo norme 1 , 2 ed infinito del vettore d
normD1 = norm(d, 1);
normD2 = norm(d, 2);
normDInf = norm(d, Inf);

fprintf("Norma con indice 1:");
disp(normD1);
fprintf("Norma con indice 2:");
disp(normD2);
fprintf("Norma con indice infinito:");
disp(normDInf);
