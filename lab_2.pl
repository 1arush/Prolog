add(X,Y,K):-
    K is X+Y.
addList([],S):-
    S is 0.
addList([A|Tail],S):-
    addList(Tail,S1), add(S1,A,S).

minimum([],S):-
    S is 1000000.
minimum([A|Tail],S):-
    minimum(Tail,S1),
    S is min(A,S1).
