% Define facts and rules.
can_fly(sparrow).
bird(X) :- can_fly(X).
bird(X) :- penguin(X).
penguin(tux).

% Backward chaining to find if an animal is a bird.
is_bird(X) :- bird(X).

% Example usage:
% ?- is_bird(sparrow).
% ?- is_bird(tux).
