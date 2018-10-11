
start(List, Res,[H|T]) :- choose(List, Elt, ResList), H = Elt,get_numbers(ResList, Res, Elt, T).
get_numbers([],Res ,Sum, Nums) :- Sum == Res, Nums = [].

get_numbers(List, Res, Sum,[FAns, SAns|Other]) :- choose(List, Elt, ResList), calc(Sum, Elt, Sum1, Action), FAns = Action, SAns = Elt ,get_numbers(ResList, Res, Sum1, Other).

choose([], []).
choose(List, Elt, ResList) :-
        length(List, Length),
        Length > 0,
        nth0(0, List, Elt),
        delete(List, Elt, ResList).

choose(List, Elt, ResList) :-
        length(List, Length),
        Index is 1,
        nth0(Index, List, Elt),
        delete(List, Elt, ResList).
choose(List, Elt, ResList) :-
        length(List, Length),
        Index is 2,
        nth0(Index, List, Elt),
        delete(List, Elt, ResList).
choose(List, Elt, ResList) :-
        length(List, Length),
        Index is 3,
        nth0(Index, List, Elt),
        delete(List, Elt, ResList).
choose(List, Elt, ResList) :-
        length(List, Length),
        Index is 4,
        nth0(Index, List, Elt),
        delete(List, Elt, ResList).


calc(NumOne, NumTwo, Res, Action) :- Res is NumOne + NumTwo, Action = '+'.
calc(NumOne, NumTwo, Res, Action) :- Res is NumOne - NumTwo, Action = '-'.
calc(NumOne, NumTwo, Res, Action) :- Res is NumOne * NumTwo, Action = '*'.
calc(NumOne, NumTwo, Res, Action) :- Res is NumOne / NumTwo, Action = '/'.