p(a,121003,140105).
p(b,150105,171007).
make(X1,X):-
    X1 is X mod 100, X is X // 100,
    X1 is X1*100, X1 is X1 + X mod 100, X is X // 100,
    X1 is X1*100, X1 is X1 + X.
findP(N,Y):-
    p(N,Ya,Yb) , Y >= Ya, Y =< Yb.

pow([],[]).
pow([H|T],P):- pow(T,P).
pow([H|T],[H|P]) :- pow(T,P).

listgen(X,S):-
    S=:=0 .
listgen(X, N):-
    X is [N|X], N1 is N-1,
    listgen(X, N1).

range(I,I,[I]).
range(I,K,[I|L]) :- I < K, I1 is I + 1, range(I1,K,L).




