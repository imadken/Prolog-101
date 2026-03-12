# Prolog : TP 1 

## Exercice 1 : Les listes 

1. Écrire un prédicat `appartenir(X, L)` testant si un élément `X` appartient à une liste `L`.
2. Écrire un prédicat `premier(X, L)` testant si un élément `X` est le premier élément d’une liste `L`.
3. Écrire un prédicat `dernier(X, L)` trouvant le dernier élément `X` d’une liste non vide `L`.
4. Écrire un prédicat `avant_dernier(X, L)` trouvant l'avant-dernier élément `X` d’une liste `L` contenant au moins deux éléments.
5. Écrire un prédicat `supprimer_k(K, L1, L2)` supprimant le $K^{ème}$ élément d’une liste `L1` et retournant le résultat dans une liste `L2`.
6. Écrire un prédicat `substitut(X, Y, L1, L2)` remplaçant toutes les occurrences d’un élément `X` par un élément `Y` dans une liste `L1` pour obtenir `L2`.
7. Écrire un prédicat `longueur(L, N)` calculant la longueur `N` d’une liste `L`.
8. Écrire un prédicat `somme(L, S)` calculant la somme `S` des éléments d’une liste d’entiers `L`.
9. Écrire un prédicat `affiche1(L)` affichant les éléments d’une liste, un par ligne, dans l’ordre de leur apparition dans la liste.
10. Écrire un prédicat `affiche2(L)` affichant les éléments d’une liste, un par ligne, dans l’ordre inverse de leur apparition dans la liste.
11. Écrire un prédicat `pair(L)` testant si une liste a un nombre pair d’éléments.
12. Écrire un programme Prolog `au_moins_deux(X, L)` testant si un élément `X` est présent au moins deux fois dans une liste `L`.
13. Écrire, sans utiliser `append`, un prédicat `concat(L1, L2, L3)` concaténant deux listes `L1` et `L2` dans `L3`.
14. Écrire un prédicat `palindrome(L)` testant si une liste est sa propre image renversée (exemple : `[a,m,a]`).

## Exercice 2 : Arbre généalogique

1. Définissez, sous forme d’un programme Prolog se réduisant à une base de faits, la famille ci-dessous : 
    - Pierre, Jacques, Luc, Paul, Antoine et Michel sont des hommes.
    - Marie, Sophie, Claire, Julie et Anne sont des femmes.
    - Paul est père de Michel.
    - Michel est père de Julie et d'Antoine.
    - Antoine est père de Jacques et d'Anne.
    - Luc est père de Pierre.
    - Sophie est mère de Michel.
    - Claire est mère de Julie et d'Antoine.
    - Julie est mère de Pierre.
    - Marie est mère de Jacques et d'Anne.

2. Traduire les questions suivantes en Prolog et vérifier les réponses :  
    - Est-ce qu'Antoine est un homme ? 
    - Est-ce que Pierre est une femme ? 
    - Qui est une femme ? 
    - Qui est un homme ? 
    - Est-ce que Marie est la mère d'Anne ? De Pierre ? 
    - Qui est la mère de Michel ? 
    - Quels sont les enfants d'Antoine ? 
    - Quels sont les hommes qui sont pères ?  

3. Enrichissez le programme Prolog avec une base de règles définissant les prédicats suivants :  
    - `parent(X, Y)` : `X` est un parent de `Y`, père ou mère.
    - `fils(X, Y)` : `X` est fils de `Y`.
    - `fille(X, Y)` : `X` est fille de `Y`.
    - `enfant(X, Y)` : `X` est un enfant de `Y`.
    - `grand_pere(X, Y)` : `X` est grand-père de `Y`.
    - `grand_mere(X, Y)` : `X` est grand-mère de `Y`.
    - `frere(X, Y)` : `X` est frère de `Y`.
    - `soeur(X, Y)` : `X` est sœur de `Y`.
    - `frere_ou_soeur(X, Y)` : `X` est frère ou sœur de `Y`.
    - `tante(X, Y)` : `X` est la tante de `Y`.
    - `grand_parent(X, Y)` : `X` est grand-parent de `Y` (grand-père ou grand-mère).
    - `cousin_cousine(X, Y)` : `X` est un cousin ou une cousine de `Y`.

## Exercice 3 : Fusion de listes

Écrire un programme Prolog `fusion(L1, L2, L3)` de fusion de deux listes triées `L1` et `L2`, le résultat devant être une liste triée `L3`.

## Exercice 4 : Suppression des doublons

Écrire un programme Prolog `unique(L1, L2)` supprimant d’une liste `L1`, pour tout élément ayant plus d’une occurrence, toutes les occurrences autres que la première.

## Exercice 5 : Tri par sélection

Écrire un programme Prolog `tri_selection(L1, L2)` de tri par sélection d’une liste `L1` vers `L2`.

## Exercice 6 : Arithmétique et récursivité

1. Écrire un prédicat `max(X, Y, M)` qui retourne le maximum `M` entre deux nombres `X` et `Y`.
2. Écrire un prédicat `fact(N, F)` qui calcule la factorielle `F` d’un nombre `N`.
3. Écrire un prédicat `puissance(X, N, P)` qui calcule $X^N = P$.
4. Écrire un prédicat `fibonacci(N, F)` qui calcule le $N^{ème}$ nombre de Fibonacci.
5. Écrire un prédicat `pgcd(X, Y, D)` qui calcule le Plus Grand Commun Diviseur `D` de `X` et `Y`.
