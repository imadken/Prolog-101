% Exercice 4 : Suppression des doublons (occurrences > 1)

% unique(L1, L2) : Supprime les occurrences multiples d'un même élément
% uniquement en gardant la première.

unique([], []).
unique([H|T], [H|R]) :-
    delete_all(H, T, T1),
    unique(T1, R).

% delete_all(X, L1, L2) : Supprime toutes les occurrences de X dans L1
delete_all(_, [], []).
delete_all(X, [X|T], R) :- delete_all(X, T, R).
delete_all(X, [H|T], [H|R]) :- H \= X, delete_all(X, T, R).
