sort(v).
human(boy).
obj(p).
p(obj).
likes(cf,sayRushil).
likes(cf,s).

mom(a,b).
mom(b,c).
parent(X,Y) :- mom(X,Y).

parent(1,2).
parent(1,3).
sibling(X,Y) :- parent(Z,X),parent(Z,Y).



