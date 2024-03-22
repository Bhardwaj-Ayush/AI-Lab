% Base case: If N is 1, insert I at the beginning of the list
insert_nth(I, 1, L, [I|L]).

% Recursive case: If N > 1, recursively insert I at the (N-1)th position
insert_nth(I, N, [H|T], [H|R]) :-
    N > 1,
    N1 is N - 1,
    insert_nth(I, N1, T, R).
