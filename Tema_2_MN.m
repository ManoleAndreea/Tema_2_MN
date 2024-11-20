% Tema 2 MN
% Manole Andreea - Cristina, 321 AA

%   Aceasta tema ilustreaza o problema rau conditionata.

%   Se da n intreg pozitiv. Folosind functia MATLAB adecvata, sa se calculeze
% coeficientii polinomului p(x) cu radacinile 1, 2, ... , n. Apoi, folosind
% o alta functie MATLAB (tot adecvata!), sa se calculeze radacinile lui
% p(x). Comentati rezultatele pentru n=5, n=20.
%   Care e problema rau conditionata? Calcului coeficientilor din radacini?
%   Calculul radacinilor din coeficienti? Amandoua?

format long

n=5;
radacini=1:n;
coeficienti=poly(radacini);

disp("coeficientii pentru polinomul de grad 5 sunt:")
disp(coeficienti);
% Coeficientii sunt: 1, -15, 85, -225, 274, -120 (corect)
% Pentru a verifica daca coeficientii sunt buni, aplicam iar functia de
% roots pentru a vedea daca ne da aceleasi radacini
radacini_presupuse=roots(coeficienti);
disp("presupusele radacini pentru polinomul de grad 5 sunt:")
disp(radacini_presupuse);
% Radacinile afisate sunt:   5.000000000000138, 3.999999999999776
% 3.000000000000124, 1.999999999999966, 1.000000000000004 (ceea ce e
% incorect, dar aproape de adevar)


n=20;
radacini=1:n;
coeficienti=poly(radacini);
disp("coeficientii pentru polinomul de grad 20 sunt:")
disp(coeficienti);
radacini_presupuse=roots(coeficienti);
disp("presupusele radacini pentru polinomul de grad 20 sunt:")
disp(radacini_presupuse);
% Coeficientii sunt:  1         -55        1320      -18150      157773     
% -902055     3416930    -8409500    12753576   -10628640     3628800

% Radacinile afisate sunt:    20.0000, 18.9994, 18.0033, 16.9882, 16.0262
%  14.9564, 14.0507, 12.9560, 12.0300, 10.9855, 10.0054, 8.9986, 8.0002
%  7.0000, 6.0000, 5.0000, 4.0000, 3.0000, 2.0000, 1.0000

% clar, gresite. De aici putem observa ca de la un N mai mare de 20, 
% rezultatele obtinute in MatLab au erori de calcul. 

% Problema rau conditionata poate fi si la calculul coeficientilor din
% radacini deoarece cu cat numarul radacinilor creste, cu atat, coeficientii
% devin din ce in ce mai mari, amplificand erorile.

% Aflarea radacinilor  este o problemă și mai rău condiționată. Datorită 
% naturii aritmeticii în virgulă mobilă, orice mică eroare în coeficienți 
% va duce la abateri mari în calculul rădăcinilor. În cazul unui polinom de
% grad mare, rădăcinile obținute pot fi semnificativ diferite de rădăcinile 
% reale.
