% 
% facts can go here
% 

% here's a graph definition
arc('m','p',8).
arc('q','p',13).
arc('q','m',5).
arc('k','q',3).


% 
% rules can go here
% 


:-
    % 
    % queries go here
    % 
    get_char(StartNode), % <- puts the commandline argument inside of StartNode
    get_char(EndNode),
    write('path from: '), write(StartNode), write('\n'),
    write('path to: '), write(EndNode), write('\n'),
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % uncomment the next few lines to query your path method
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % path(StartNode, EndNode, Output, Cost),
    % write('is: '), write(Output), write('\n'),
    % write('Cost: '), write(Cost), write('\n'),
    
    % next few lines are an example of how to query an existing fact
    % (WhatLength is the "output" since StartNode, EndNode, are known)
    arc(StartNode, EndNode, WhatLength),
    write(WhatLength), write('\n'),
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % comment out these^ lines out when you start coding yourself
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    !. % end