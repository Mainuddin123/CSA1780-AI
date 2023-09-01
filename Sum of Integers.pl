% Base case: Sum of integers from 1 to 1 is 1.
sum_integers(1, 1).

% Recursive rule: Sum of integers from 1 to N is Sum1, and the sum of integers from 1 to N+1 is Sum2,
% then Sum2 is Sum1 + N+1.
sum_integers(N, Sum) :-
    N > 1,
    N1 is N - 1,
    sum_integers(N1, Sum1),
    Sum is Sum1 + N.
