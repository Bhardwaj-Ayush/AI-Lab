% Base case: if N is 1, remove the head of the list
delete_nth(1, [_|T], T).

% Recursive case: if N > 1, recursively remove the Nth element
delete_nth(N, [H|T], [H|R]) :-
    N > 1,
    N1 is N - 1,
    delete_nth(N1, T, R).