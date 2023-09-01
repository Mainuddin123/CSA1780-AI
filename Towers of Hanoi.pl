% Rules to solve the Towers of Hanoi problem.

% Move a single disk from one peg to another.
move(1, A, B, _) :-
    write('Move disk 1 from '), write(A), write(' to '), write(B), nl.

% Move N disks from source peg to target peg using auxiliary peg.
move(N, A, C, B) :-
    N > 1,
    M is N - 1,
    move(M, A, B, C),
    move(1, A, C, _),
    move(M, B, C, A).

% To solve the Towers of Hanoi with N disks:
hanoi(N) :- move(N, 'A', 'C', 'B').

% Example usage: hanoi(3) will solve the Towers of Hanoi problem for 3 disks.
