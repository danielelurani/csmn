%Esercitazione 1 esercizio 2


% Stampo a schermo un menu con un piatto per ogni numero da 1 a 4
disp('Menù:');
disp('1 - Pasta alla carbonara');
disp('2 - Riso alla milanese');
disp('3 - Spaghetti alla bolognese');
disp('4 - Penne cacio e pepe');

% Chiedo all'utente di scegliere un piatto e salvo nella variabile inpt
inpt = input('Scegliere una portata: ');

%{ 
utilizzando il costrutto switch, in base al numero selezionato viene
stampato a schermo il nome del piatto corrispondente e le relative calorie.
Se il numero non è compreso tra 1 e 4 stampo un messaggio di errore.
%}
switch inpt
    case 1
        disp('Pasta alla carbonara, 560 kcal');
    case 2
        disp('Riso alla milanese, 245 kcal');
    case 3
        disp('Spaghetti alla bolognese, 360 kcal');
    case 4
        disp('Penne cacio e pepe, 480 kcal');
    otherwise
        disp ('Numero non compreso nel menù.');
end
