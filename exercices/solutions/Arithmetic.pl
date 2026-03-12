% Exercice 6 : Arithmétique et récursivité (Bonus)

% 1) max(X, Y, M) : M est le maximum entre X et Y
max(X, Y, X) :- X >= Y.
max(X, Y, Y) :- X < Y.

% 2) fact(N, F) : F est la factorielle de N
fact(0, 1).
fact(N, F) :-
    N > 0,
    N1 is N - 1,
    fact(N1, F1),
    F is N * F1.

% 3) puissance(X, N, P) : P = X^N
puissance(_, 0, 1).
puissance(X, N, P) :-
    N > 0,
    N1 is N - 1,
    puissance(X, N1, P1),
    P is X * P1.

% 4) fibonacci(N, F) : F est le N-ième nombre de Fibonacci
fibonacci(0, 0).
fibonacci(1, 1).
fibonacci(N, F) :-
    N > 1,
    N1 is N - 1,
    N2 is N - 2,
    fibonacci(N1, F1),
    fibonacci(N2, F2),
    F is F1 + F2.

% 5) pgcd(X, Y, D) : D est le PGCD de X et Y
pgcd(X, 0, X) :- X > 0.
pgcd(X, Y, D) :-
    Y > 0,
    R is X mod Y,
    pgcd(Y, R, D).
