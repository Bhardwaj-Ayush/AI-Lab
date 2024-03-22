% Define the base case: if the first list is empty, then the merged list is the second list
merge([], L2, L2).

% Define the case where the second list is empty, then the merged list is the first list
merge(L1, [], L1).

% Define the case where both lists have elements
merge([H1|T1], [H2|T2], [H1|T3]) :-
    H1 =< H2, % If the head of the first list is less than or equal to the head of the second list,
    merge(T1, [H2|T2], T3). % recurse with the tail of the first list and the second list

merge([H1|T1], [H2|T2], [H2|T3]) :-
    H1 > H2, % If the head of the first list is greater than the head of the second list,
    merge([H1|T1], T2, T3). % recurse with the first list and the tail of the second list
