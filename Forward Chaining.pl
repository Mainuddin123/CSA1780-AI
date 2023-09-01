% Define facts and rules.
bird(penguin) :- cannot_fly(penguin).
bird(sparrow) :- can_fly(sparrow).
can_fly(sparrow) :- has_wings(sparrow).
has_wings(sparrow).

% Forward chaining to infer bird classification.
bird_classification(X) :- bird(X).
bird_classification(X) :- can_fly(X).

% Example usage:
% ?- bird_classification(sparrow).
% ?- bird_classification(penguin).
