gcd(X, 0, X).
gcd(X, Y, G) :-
    Y > 0,
    Y =< X,
    X1 is X - Y,
    gcd(Y, X1, G).
gcd(X, Y, G) :-
    X > Y,
    gcd(Y, X, G).
