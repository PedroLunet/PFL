teaches(adalberto, algorithms).
teaches(bernardete, databases).
teaches(capitolino, compilers).
teaches(diogenes, statistics).
teaches(ermelinda, networks).

attends(alberto, algorithms).
attends(bruna, algorithms).
attends(cristina, algorithms).
attends(diogo, algorithms).
attends(eduarda, algorithms).

attends(antonio, databases).
attends(bruno, databases).
attends(cristina, databases).
attends(duarte, databases).
attends(eduardo, databases).

attends(alberto, compilers).
attends(bernardo, compilers).
attends(clara, compilers).
attends(diana, compilers).
attends(eurico, compilers).

attends(antonio, statistics).
attends(bruna, statistics).
attends(claudio, statistics).
attends(duarte, statistics).
attends(eva, statistics).

attends(alvaro, networks).
attends(beatriz, networks).
attends(claudio, networks).
attends(diana, networks).
attends(eduardo, networks).

studentOf(S,T) :- attends(S, _X),teaches(T,_X).
studentsOf(T, StudentsList) :- 
    teaches(T, Course),
    setof(S, attends(S, Course), StudentsList).

teachersOf(S,Tlist) :-  
	attends(S, Course),
	setof(T, teaches(T, Course), Tlist).


commonStudent(X, Y, S) :- 
    studentOf(S, X), 
    studentOf(S, Y), 
    X \= Y.

% Rule for Student Colleagues (Shared Course)
colleagues(X, Y) :- 
    attends(X, Course), 
    attends(Y, Course), 
    X \= Y.

% Rule for Teacher Colleagues (Both are Teachers)
colleagues(X, Y) :- 
    teaches(X, _), 
    teaches(Y, _), 
    X \= Y.

overloaded(S) :- 
    attends(S, C1), 
    attends(S, C2), 
    C1 \= C2.



