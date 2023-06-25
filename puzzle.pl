digits_number(Ds, N) :-
        length(Ds, _),
        Ds ins 0..9,
        reverse(Ds, RDs),
        foldl(pow, RDs, 0-0, N-_).

pow(D, N0-I0, N-I) :-
        N #= N0 + D*10^I0,
        I #= I0 + 1.
