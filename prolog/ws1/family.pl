% ==========================================
% Family Facts
% ==========================================

male(frank).
male(jay).
male(javier).
male(merle).
male(phil).
male(mitchell).
male(joe).
male(manny).
male(cameron).
male(bo).
male(dylan).
male(luke).
male(rexford).
male(calhoun).
male(george).

female(grace).
female(dede).
female(gloria).
female(barb).
female(claire).
female(pameron).
female(haley).
female(alex).
female(lily).
female(poppy).

% Generation 1 to 2
parent(grace, phil).
parent(frank, phil).
parent(dede, claire).
parent(jay, claire).
parent(dede, mitchell).
parent(jay, mitchell).
parent(jay, joe).
parent(gloria, joe).
parent(gloria, manny).
parent(javier, manny).
parent(barb, cameron).
parent(merle, cameron).
parent(barb, pameron).
parent(merle, pameron).

% Generation 2 to 3
parent(phil, haley).
parent(claire, haley).
parent(phil, alex).
parent(claire, alex).
parent(phil, luke).
parent(claire, luke).
parent(mitchell, lily).
parent(cameron, lily).
parent(mitchell, rexford).
parent(cameron, rexford).
parent(pameron, calhoun).
parent(bo, calhoun).

% Generation 3 to 4
parent(dylan, george).
parent(haley, george).
parent(dylan, poppy).
parent(haley, poppy).

% ==========================================
% Rules
% ==========================================

% Basic Relations
father(X, Y) :- male(X), parent(X, Y).
mother(X, Y) :- female(X), parent(X, Y).

% Grandparents
grandparent(X, Z) :- parent(X, Y), parent(Y, Z).
grandfather(X, Y) :- male(X), grandparent(X, Y).
grandmother(X, Y) :- female(X), grandparent(X, Y).

% Siblings
% Sharing at least one parent (General)
sibling(X, Y) :- parent(P, X), parent(P, Y), X \= Y.

% Sharing both parents (Full Siblings)
full_sibling(X, Y) :- 
    parent(M, X), parent(M, Y), 
    parent(F, X), parent(F, Y), 
    M \= F, X \= Y.

% Sharing only one parent (Half Siblings)
half_sibling(X, Y) :- 
    sibling(X, Y), 
    \+ full_sibling(X, Y).

brother(X, Y) :- male(X), sibling(X, Y).
sister(X, Y) :- female(X), sibling(X, Y).

% Extended Family
uncle(U, X) :- parent(P, X), sibling(U, P), male(U).
aunt(A, X) :- parent(P, X), sibling(A, P), female(A).

% Cousins: Your parent and their parent are siblings
cousin(X, Y) :- parent(P1, X), parent(P2, Y), sibling(P1, P2).

% Ancestor (Recursive rule: a parent is an ancestor, or a parent of an ancestor)
ancestor(X, Y) :- parent(X, Y).
ancestor(X, Y) :- parent(X, Z), ancestor(Z, Y).