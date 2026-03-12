% Exercice 1 : Les listes

% 1) appartenir(X, L) : X appartient à la liste L
appartenir(X, [X|_]).
appartenir(X, [_|T]) :- appartenir(X, T).

% 2) premier(X, L) : X est le premier élément de L
premier(X, [X|_]).

% 3) dernier(X, L) : X est le dernier élément de L (liste non vide)
dernier(X, [X]).
dernier(X, [_|T]) :- dernier(X, T).

% 4) avant_dernier(X, L) : X est l'avant-dernier élément de L
avant_dernier(X, [X, _]).
avant_dernier(X, [_|T]) :- avant_dernier(X, T).

% 5) supprimer_k(K, L1, L2) : Supprime le K-ème élément de L1 pour obtenir L2
supprimer_k(1, [_|T], T).
supprimer_k(K, [H|T], [H|R]) :-
    K > 1,
    K1 is K - 1,
    supprimer_k(K1, T, R).

% 6) substitut(X, Y, L1, L2) : Remplace toutes les occurrences de X par Y dans L1
substitut(_, _, [], []).
substitut(X, Y, [X|T], [Y|R]) :- substitut(X, Y, T, R).
substitut(X, Y, [H|T], [H|R]) :- H \= X, substitut(X, Y, T, R).

% 7) longueur(L, N) : Calcule la longueur N de la liste L
longueur([], 0).
longueur([_|T], N) :- longueur(T, N1), N is N1 + 1.

% 8) somme(L, S) : Somme S des éléments de la liste L
somme([], 0).
somme([H|T], S) :- somme(T, S1), S is S1 + H.

% 9) affiche1(L) : Affiche les éléments dans l'ordre (un par ligne)
affiche1([]).
affiche1([H|T]) :- writeln(H), affiche1(T).

% 10) affiche2(L) : Affiche les éléments dans l'ordre inverse
affiche2([]).
affiche2([H|T]) :- affiche2(T), writeln(H).

% 11) pair(L) : Teste si le nombre d'éléments est pair
pair([]).
pair([_, _|T]) :- pair(T).

% 12) au_moins_deux(X, L) : X est présent au moins deux fois dans L
au_moins_deux(X, L) :-
    select(X, L, L1),
    appartenir(X, L1).

% 13) concat(L1, L2, L3) : Concatène L1 et L2 dans L3 (sans append)
concat([], L, L).
concat([H|T], L2, [H|L3]) :- concat(T, L2, L3).

% 14) palindrome(L) : L est un palindrome
% Nécessite reverse_list (implémenté avec concat pour cohérence)
reverse_list([], []).
reverse_list([H|T], R) :- reverse_list(T, R1), concat(R1, [H], R).

palindrome(L) :- reverse_list(L, L).
