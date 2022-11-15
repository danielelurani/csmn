%Esercitazione 2

%pulisco la command window ad ogni nuova esecuzione
clc

%Chiedo di inserire 3 numeri e li salvo nelle variabili a, b , c
a = input('Inserire primo numero: \n');
b = input('Inserire secondo numero: \n');
c = input('Inserire terzo numero: \n');

%calcoli con operazioni algebriche
d1 = (a + b) + c;
d2 = a + (b + c);

%approssimazione e normalizzazione dei numeri inseriti
aRounded = round(a, 3, 'significant');
bRounded = round(b, 3, 'significant');
cRounded = round(c, 3, 'significant');

%calcoli con operazioni macchina
d1Rounded = round(round((aRounded + bRounded), 3, 'significant') + cRounded, 3, 'significant');
d2Rounded = round(aRounded + round((bRounded + cRounded), 3, 'significant'), 3, 'significant');

%calcolo l'errore relativo
p1 = abs(d1 - d1Rounded)/abs(d1);
p2 = abs(d2 - d2Rounded)/abs(d2);

%stampa a schermo dei vari risultati
fprintf('Risultato della somma d1 = (a + b) + c = %f. \n', d1Rounded);
fprintf('Risultato della somma d2 = a + (b + c) = %f. \n', d2Rounded);
fprintf('Errore relativo p1 = %e. \n', p1);
fprintf('Errore relativo p2 = %e. \n', p2);