% Define edges in the graph.
edge(a, b).
edge(a, c).
edge(b, d).
edge(b, e).
edge(c, f).

% Define the BFS algorithm.
bfs(Start, Goal) :-
    bfs_queue([Start], [], Goal).

% Base case: The goal node is reached.
bfs_queue([Goal|_], _, Goal).

% Recursive case: Explore neighbors.
bfs_queue([Current|Rest], Visited, Goal) :-
    findall(Next, (edge(Current, Next), \+ member(Next, Visited)), Neighbors),
    append(Rest, Neighbors, NewQueue),
    bfs_queue(NewQueue, [Current|Visited], Goal).

% Example usage:
% ?- bfs(a, f).
