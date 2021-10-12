% 
% facts here
% 

% here's a graph
arc('m','p',8).
arc('q','p',13).
arc('q','m',5).
arc('k','q',3).


% 
% rules here
% 


:-
    % 
    % query's here
    % 
    get_char(X), % puts the value inside of X
    get_char(Y), % puts the value inside of Y
    write('path from: '), write(X), write('\n'),
    write('path to: '), write(Y), write('\n'),
    write('is: '),
    % next 2 lines are an example of how to query a fact (WhatLength is the "output" since X, Y, are known)
    arc(X, Y, WhatLength),
    write(WhatLength),
    % % uncomment the next two lines to query/call/run
    % % the path rule you'll hopefully create:
    % path(X, Y, OUTPUT),
    % write(OUTPUT),
    write('\n').