% Base case: If N is 1, X is the head of the list
nth_element(1, [X|_], X).

% Recursive case: If N > 1, recursively find the (N-1)th element in the tail of the list
nth_element(N, [_|T], X) :-
    N > 1,
    N1 is N - 1,
    nth_element(N1, T, X).
