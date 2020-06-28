% Mathematical Equation = 2*(1+2+3+4) – (1 + 1 + 2 + 2 + 3 + 3 + 4) = 4
% Irregular Number
% calc_irregular([2,3,2,4,1,6,1,3,6],Result). Result = 4
% calc_irregular([18,21,55,18,43,21,52,55,52],IrregularNumber).
% Output of above function call = 43

calc_irregular([],0).

calc_irregular(X,Result):-
    list_sum(X,Sum),
    remove_duplicates(X,Y),
    list_sum(Y,Sum1),
    multiplication(2,Sum1,Sum2),
    number(Sum2),
    number(Sum),
    Result is Sum2 - Sum, !.


multiplication(N1, N2, Res) :-
	number(N1),
	number(N2),
	Res is N1 * N2, !.


list_sum([], 0).
list_sum([Head | Tail], TotalSum) :-
list_sum(Tail, Sum1),
TotalSum is Head + Sum1.

remove_duplicates([], []).
remove_duplicates([H|T], [H|Rest]) :- remove_duplicates(T, Rest), not(member(H, Rest)).
remove_duplicates([H|T], Rest) :- remove_duplicates(T, Rest), member(H, Rest).


