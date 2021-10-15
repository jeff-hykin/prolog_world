% 
% put facts here
% 

% here's a graph definition
arc('m','p',8).
arc('q','p',13).
arc('q','m',5).
arc('k','q',3).


% 
% put rules here
% 


:-
    % 
    % put query's here
    % 
    get_char(StartNode), % <- puts the commandline argument inside of StartNode
    get_char(EndNode),
    write('path from: '), write(StartNode), write('\n'),
    write('path to: '), write(EndNode), write('\n'),
% path from: m
% path to: p
% is: 
    
    % % uncomment the next few lines to query your path method
    % path(StartNode, EndNode, Output, Cost),
    % write('is: '), write(Output), write('\n'),
    % write('Cost: '), write(Cost), write('\n'),
    
    % next few lines are an example of how to query an existing fact
    % (WhatLength is the "output" since StartNode, EndNode, are known)
    arc(StartNode, EndNode, WhatLength),
    write(WhatLength), write('\n'),
    % comment these^ lines out when you start coding yourself
    
    !. % end