% 
% import stuff
% 
:- 
    load_files([my_agent, wumpus_world]).

[wumpus_world].
[my_agent].


:-
    wumpus:evaluate_agent(1, Score, Time),
    write('Score:'),write(Score),write('\n'),
    write('Time:'),write(Time),write('\n').