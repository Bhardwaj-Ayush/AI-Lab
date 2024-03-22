% Base case: An empty list has an even length.
evenlength([]).

% Recursive case: If the list has at least one element, remove its head and tail and recursively check the length.
evenlength([_,_|T]) :-
    evenlength(T).

% Base case: An empty list does not have an odd length.
oddlength([_]).

% Recursive case: If the list has at least one element, remove its head and tail and recursively check the length.
oddlength([_,_|T]) :-
    oddlength(T).
