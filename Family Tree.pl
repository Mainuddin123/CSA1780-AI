% Define facts about family relationships.
parent(john, mary).
parent(john, ann).
parent(mary, jill).
parent(mary, jim).
parent(ann, joe).

% Define rules to determine various relationships.
sibling(X, Y) :- parent(Z, X), parent(Z, Y), X \= Y.
grandparent(X, Y) :- parent(X, Z), parent(Z, Y).

% Query family relationships.
% Example queries:
% ?- sibling(jim, jill).
% ?- grandparent(john, joe).
