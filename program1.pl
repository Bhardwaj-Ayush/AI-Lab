% Facts
female(pam).
female(liz).
female(pat).
female(ann).
male(jim).
male(bob).
male(tom).
male(peter).

parent(pam, bob).
parent(tom, bob).
parent(tom, liz).
parent(bob, ann).
parent(bob, pat).
parent(pat, jim).
parent(bob, peter).
parent(peter, jim).

offspring(Y,X):-
    parent(X,Y).
mother(X,Y):-
    parent(X,Y),
    female(X).
grandparent(X,Z) :-
    parent(X,Y),
    parent(X,Z).
sister(X,Y) :-
    parent(Z,X),
    parent(Z,Y),
    female(X),
    different(X,Y).
predecessor(X,Z) :-
    parent(X,Z).
predecessor(X,Z) :-
    parent(X,Y),
    predecessor(Y,Z).