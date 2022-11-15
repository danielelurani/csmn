%Esercitazione 1 esercizio 1

%Chiedo di inserire un numero e lo salvo nella variabile inpt
inpt = input('Inserire un numero compreso tra 0 e 50: \n');

%{
Se inpt è compreso tra 0 e 50 allora stampo a schermo la sua radice
altrimenti stampo a schermo un messaggio di errore
%}

if inpt >= 0 && inpt <= 50
    square = sqrt(inpt);
    disp(square);
else
    disp('Errore. Il numero non fa parte del range specificato.');
end
