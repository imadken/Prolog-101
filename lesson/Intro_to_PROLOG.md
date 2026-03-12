# Introduction à Prolog – Prolog 101

## 1. Introduction

Prolog (PROgramming in LOGic) est un langage de programmation basé sur la **logique formelle**.

Contrairement aux langages impératifs comme C, Java ou Python, où un programme décrit **une suite d’instructions à exécuter**, un programme Prolog décrit **des relations logiques entre des faits**.

Dans les langages classiques, on écrit généralement :

- **comment calculer un résultat**

En Prolog, on décrit :

- **ce qui est vrai**
- **les relations logiques entre les éléments**

Le moteur Prolog se charge ensuite de **déduire automatiquement les réponses** à partir de ces informations.

Cela signifie qu'il faut **adapter sa manière de penser** :

Au lieu de penser :

> Quelle suite d’instructions le programme doit-il exécuter ?

Il faut penser :

> Quelles sont les connaissances et quelles règles logiques permettent de déduire la réponse ?

Cela influence également la manière de **Debuggerguer un programme**.  
Dans les langages impératifs, on trace l’exécution ligne par ligne.  
En Prolog, on doit analyser :

- l’unification
- la propagation des variables
- le backtracking
- l’ordre des règles



# 2. Structure d’un programme Prolog

Un programme Prolog est une **base de connaissances** composée de :

- **faits (facts)**
- **règles (rules)**
- **requêtes (queries)**

Les faits et les règles définissent les connaissances.  
Les requêtes permettent de poser des questions au système.

Exemple :

```prolog
parent(john, marie).
parent(marie, luc).

grandparent(X, Z) :-
    parent(X, Y),
    parent(Y, Z).
```

Requête :

```prolog
?- grandparent(john, luc).
```

Résultat :

```
true
```

Ou :

```prolog
?- grandparent(X, luc).
```

Résultat :

```
X = john
```



# 3. Les faits

Les faits représentent **des informations vraies**.

Syntaxe générale :

```prolog
predicate(argument1, argument2, ..., argumentN).
```

Exemple :

```prolog
likes(alice, pizza).
likes(bob, pasta).
likes(charlie, pizza).
```

Chaque fait se termine par un **point (`.`)**.

Le fait :

```
likes(alice, pizza)
```

signifie :

> Alice aime la pizza.



# 4. Les règles

Les règles permettent de définir **des relations logiques**.

Syntaxe :

```prolog
Head :- Body.
```

Cela se lit :

```
Head est vrai si Body est vrai
```

Exemple :

```prolog
grandparent(X, Z) :-
    parent(X, Y),
    parent(Y, Z).
```

Interprétation :

> X est grand-parent de Z si
> X est parent de Y
> et Y est parent de Z.

La virgule représente un **ET logique**.



# 5. Les requêtes

Les requêtes permettent d’interroger la base de connaissances.

Syntaxe :

```prolog
?- requete.
```

Exemple :

```prolog
?- likes(X, pizza).
```

Résultat :

```
X = alice
X = charlie
```

Prolog peut trouver **plusieurs solutions** grâce au **backtracking**.



# 6. Prédicats et arité

Un prédicat représente une relation.

Exemple :

```prolog
likes(alice, pizza).
```

Nom du prédicat :

```
likes
```

Arguments :

```
alice, pizza
```

Ce prédicat a **une arité de 2**, notée :

```
likes/2
```

Exemples :

```
parent/2
member/2
append/3
```



# 7. Variables et constantes

## Variables

Les variables commencent par une **majuscule** ou `_`.

Exemples :

```
X
Person
Age
_
```

Exemple :

```prolog
parent(X, marie).
```

Cela signifie :

> Qui est parent de Marie ?



## Atomes (constantes)

Les atomes commencent par une **minuscule**.

Exemples :

```
john
pizza
chien
maison
```

Exemple :

```prolog
likes(john, pizza).
```



# 8. Les listes

Les listes sont une structure fondamentale en Prolog.

Exemples :

```prolog
[1,2,3]
[a,b,c]
[]
```

Une liste peut être décomposée sous la forme :

```prolog
[Head | Tail]
```

Exemple :

```prolog
[1,2,3]
```

équivaut à :

```
Head = 1
Tail = [2,3]
```

Exemple de prédicat :

```prolog
first([H|_], H).
```

Requête :

```prolog
?- first([10,20,30], X).
```

Résultat :

```
X = 10
```



# 9. Prédicats prédéfinis pour les listes

### member

```prolog
member(X, List)
```

Exemple :

```prolog
?- member(3, [1,2,3,4]).
```

Résultat :

```
true
```



### append

```prolog
append(List1, List2, Result)
```

Exemple :

```prolog
?- append([1,2], [3,4], X).
```

Résultat :

```
X = [1,2,3,4]
```



### length

```prolog
length(List, N)
```

Exemple :

```prolog
?- length([a,b,c], N).
```

Résultat :

```
N = 3
```



# 10. Calculs arithmétiques

Les calculs utilisent l’opérateur :

```
is
```

Exemple :

```prolog
X is 2 + 3.
```

Résultat :

```
X = 5
```

Important :

`=` ne calcule pas.

```prolog
X = 2 + 3.
```

Résultat :

```
X = 2 + 3
```



# 11. Opérateurs de comparaison

Prolog fournit plusieurs opérateurs :

```
>
<
>=
=<
=:=   égalité arithmétique
=\=   inégalité arithmétique
```

Exemple :

```prolog
X > 5
```



# 12. Unification

L’unification est le **mécanisme central de Prolog**.

Elle consiste à rendre deux termes identiques en liant les variables.

Exemple :

```prolog
likes(X, pizza) = likes(alice, pizza).
```

Résultat :

```
X = alice
```

Autre exemple :

```prolog
f(X,Y) = f(2,3).
```

Résultat :

```
X = 2
Y = 3
```



# 13. Substitution

Lorsqu’une unification réussit, Prolog applique une **substitution**.

La variable est remplacée par la valeur correspondante.

Exemple :

```
X = john
```

Toutes les occurrences de `X` deviennent `john`.

La substitution permet de propager l’information dans les règles.



# 14. Résolution des objectifs

Prolog résout les problèmes en essayant de **prouver un objectif (goal)**.

Exemple :

```prolog
grandparent(X,Z) :-
    parent(X,Y),
    parent(Y,Z).
```

Requête :

```prolog
?- grandparent(john, luc).
```

Prolog tente de prouver :

```
parent(john, Y)
parent(Y, luc)
```

Si ces deux objectifs sont vrais, la requête réussit.



# 15. Backtracking

Si une tentative échoue, Prolog revient en arrière et explore d’autres possibilités.

Exemple :

```prolog
color(red).
color(blue).
color(green).
```

Requête :

```prolog
?- color(X).
```

Résultat :

```
X = red
X = blue
X = green
```

Prolog explore les solutions grâce au **backtracking**.



# 16. Ordre d’évaluation

Prolog évalue :

* les objectifs **de gauche à droite**
* les règles **de haut en bas**

L’ordre peut donc influencer le comportement du programme.



# 17. L’opérateur cut

Le **cut** s’écrit :

```
!
```

Il empêche Prolog de revenir en arrière.

Exemple :

```prolog
max(X,Y,X) :-
    X >= Y, !.

max(_,Y,Y).
```

Si la première règle est vraie, Prolog n’essaiera pas la seconde.



# 18. Négation

La négation s’écrit :

```prolog
\+ Goal
```

Exemple :

```prolog
not_parent(X,Y) :-
    \+ parent(X,Y).
```

Cela signifie :

> X n’est pas parent de Y si Prolog ne peut pas prouver que X est parent de Y.

On parle de **négation par échec (negation as failure)**.



# 19. Différences avec les langages impératifs

Prolog est très différent des langages classiques.

Principales différences :

### Pas de flux de contrôle explicite

Pas de boucles `for` ou `while`.

### Les programmes décrivent des connaissances

On définit des relations logiques.

### L’exécution est déclenchée par des requêtes

Le programme répond à des questions.

### Recherche automatique de solutions

Prolog explore l’espace de recherche via le backtracking.

### Debugging logique

Il faut analyser :

* les règles
* l’unification
* l’ordre des prédicats
* la récursion



# 20. Conclusion

La programmation en Prolog repose sur quelques concepts fondamentaux :

* une base de connaissances composée de faits et de règles
* l’unification des termes
* la substitution des variables
* la résolution d’objectifs
* le backtracking

Apprendre Prolog demande de **changer de paradigme** :
au lieu d’écrire des instructions, on décrit **la logique du problème**.
