# Prolog Teaching Material - TP 1

## Introduction

Welcome to this Prolog repository! Prolog (PROgrammation LOGique) is a high-level logic programming language associated with artificial intelligence and computational linguistics. Unlike traditional imperative programming languages, Prolog is declarative: you describe the "what" (the facts and rules of the problem) rather than the "how" (the specific steps to solve it).

This repository is designed to help students master the fundamentals of logic programming, starting from simple facts and moving towards complex list manipulation and recursive algorithms.

## ��� Repository Structure

- **[Prolog_TP1.md](Prolog_TP1.md)**: The main instruction sheet for the exercises, covering:
  - List manipulation (belonging, concatenation, palindromes, etc.)
  - Logic programming with a family tree (facts & rules)
  - Sorting algorithms (Merge Sort, Selection Sort)
  - Recursive arithmetic (Factorial, Fibonacci, GCD)

## ��� Solutions

The solutions are organized by exercise topic:

- **[Lists.pl](Lists.pl)**: Solutions for Exercice 1 (Generic list predicates).
- **[Family_Tree.pl](Family_Tree.pl)**: Solutions for Exercice 2 (Knowledge base and family relations).
- **[Merge_Sort.pl](Merge_Sort.pl)**: Solution for Exercice 3 (Merging sorted lists).
- **[Remove_Duplicates.pl](Remove_Duplicates.pl)**: Solution for Exercice 4 (Elements with single occurrence).
- **[Selection_Sort.pl](Selection_Sort.pl)**: Solution for Exercice 5 (Selection Sort implementation).
- **[Arithmetic.pl](Arithmetic.pl)**: Solutions for Exercise 6 (Arithmetic bonus: Max, Fact, Power, Fibonacci, PGCD).

## ��� Getting Started

### Prerequisites

You can run these Prolog files using an online interpreter or by installing one locally:

- **Online**: [SWISH (SWI-Prolog for the Web)](https://swish.swi-prolog.org/) - No installation required.
- **Local (Recommended)**: [SWI-Prolog](https://www.swi-prolog.org/) - Full-featured installation for local development.

### How to Run Locally

1. Clone this repository:
   ```bash
   git clone <repository-url>
   cd prolog
   ```

2. Load a file into the interpreter (e.g., Lists.pl):
   ```bash
   swipl -s Lists.pl
   ```

3. Query the predicates:
   ```prolog
   ?- appartenir(2, [1, 2, 3]).
   % true.
   
   ?- longueur([a, b, c], N).
   % N = 3.
   ```

## License

This material is for educational purposes. Feel free to use and adapt it for your teaching or learning.
