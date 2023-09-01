% Define facts and rules for solving the Monkey and Banana problem.
state(at(ground, monkey, has_not), [on(floor), at(floor, box), at(ceiling, banana)]).
state(at(ground, monkey, has), [on(floor), at(floor, box), at(ceiling, empty)]).

move(state(at(ground, monkey, has_not), Config), grasp, state(at(ground, monkey, has), NewConfig)) :-
    drop_box(Config, NewConfig).

move(state(at(ground, monkey, has_not), Config), climb_box, state(at(ground, monkey, has_not), Config)).

move(state(at(ground, monkey, has), Config), climb_box, state(at(ground, monkey, has), Config)).

move(state(at(ground, monkey, has), Config), grasp, state(at(ground, monkey, has), Config)).

move(state(on(floor), Config), push_box, state(at(ground, monkey, has_not), Config)).

% Define a goal state.
goal_state(state(_, _, _), state(_, _, banana)).

% Implement the plan to reach the goal state.
plan(Start, Goal, Plan) :-
    reachable(Start, Goal, Plan, []).

reachable(State, State, [], _).
reachable(State1, State3, [Move|Rest], Visited) :-
    move(State1, Move, State2),
    \+ member(State2, Visited),
    reachable(State2, State3, Rest, [State2|Visited]).
