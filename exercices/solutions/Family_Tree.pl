% Exercice 2 : Arbre généalogique

% --- 1) Base de faits ---

% Hommes
homme(pierre).
homme(jacques).
homme(luc).
homme(paul).
homme(antoine).
homme(michel).

% Femmes
femme(marie).
femme(sophie).
femme(claire).
femme(julie).
femme(anne).

% Relation Père
pere(paul, michel).
pere(michel, julie).
pere(michel, antoine).
pere(antoine, jacques).
pere(antoine, anne).
pere(luc, pierre).

% Relation Mère
mere(sophie, michel).
mere(claire, julie).
mere(claire, antoine).
mere(julie, pierre).
mere(marie, jacques).
mere(marie, anne).


% --- 2) Traduction des questions ---

% - Est-ce qu'Antoine est un homme ? 
%   ?- homme(antoine).

% - Est-ce que Pierre est une femme ? 
%   ?- femme(pierre).

% - Qui est une femme ? 
%   ?- femme(X).

% - Qui est un homme ? 
%   ?- homme(X).

% - Est-ce que Marie est la mère d'Anne ? De Pierre ? 
%   ?- mere(marie, anne).
%   ?- mere(marie, pierre).

% - Qui est la mère de Michel ? 
%   ?- mere(X, michel).

% - Quels sont les enfants d'Antoine ? 
%   ?- pere(antoine, X) ; mere(antoine, X). 
%   % Un parent est parent s'il est pere OU mere.

% - Quels sont les hommes qui sont pères ?  
%   ?- homme(X), pere(X, Y).


% --- 3) Base de règles ---

% X est un parent de Y, père ou mère
parent(X, Y) :- pere(X, Y).
parent(X, Y) :- mere(X, Y).

% X est fils de Y
fils(X, Y) :- homme(X), parent(Y, X).

% X est fille de Y
fille(X, Y) :- femme(X), parent(Y, X).

% X est un enfant de Y
enfant(X, Y) :- parent(Y, X).

% X est grand-père de Y
grand_pere(X, Y) :- homme(X), parent(X, Z), parent(Z, Y).

% X est grand-mère de Y
grand_mere(X, Y) :- femme(X), parent(X, Z), parent(Z, Y).

% X est frère de Y
frere(X, Y) :-
    homme(X),
    parent(P, X),
    parent(P, Y),
    X \= Y.

% X est sœur de Y
soeur(X, Y) :-
    femme(X),
    parent(P, X),
    parent(P, Y),
    X \= Y.

% X est frère ou sœur de Y
frere_ou_soeur(X, Y) :-
    parent(P, X),
    parent(P, Y),
    X \= Y.

% X est la tante de Y
tante(X, Y) :-
    femme(X),
    frere_ou_soeur(X, Z),
    parent(Z, Y).

% X est grand-parent de Y (grand-père ou grand-mère)
grand_parent(X, Y) :-
    parent(X, Z),
    parent(Z, Y).

% X est un cousin ou une cousine de Y
cousin_cousine(X, Y) :-
    parent(P1, X),
    parent(P2, Y),
    frere_ou_soeur(P1, P2).
