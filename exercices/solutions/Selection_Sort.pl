% Exercice 5 : Tri par sélection

% find_min(L, Min) : Trouve le minimum d'une liste
find_min([M], M).
find_min([H|T], H) :- find_min(T, M), H =< M.
find_min([H|T], M) :- find_min(T, M), H > M.

% remove_one(X, L1, L2) : Supprime la première occurrence de X de L1
remove_one(X, [X|T], T).
remove_one(X, [H|T], [H|R]) :- H \= X, remove_one(X, T, R).

% tri_selection(L1, L2) : Tri la liste L1 dans L2 par sélection
tri_selection([], []).
tri_selection(L, [Min|R]) :-
    find_min(L, Min),
    remove_one(Min, L, L1),
    tri_selection(L1, R).
