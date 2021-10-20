<!--  -->
<!--  -->
# For the 1st Prolog Problem (assignment #3)
<!--  -->
<!--  -->

Contents:
- [How do I run the code?](https://github.com/jeff-hykin/prolog_world#how-do-i-run-the-code)
- [How do I understand the code?](https://github.com/jeff-hykin/prolog_world#how-do-i-understand-the-code)
- [What specifically needs to be done? (Checklist)](https://github.com/jeff-hykin/prolog_world#what-specifically-needs-to-be-done-checklist)
- [Whats the general objective?](https://github.com/jeff-hykin/prolog_world#whats-the-general-objective)

## Whats the general objective?

- You're given a graph in "arc-clausal form". Every edge is what Prolog would call a "fact"

![graph](https://user-images.githubusercontent.com/17692058/137210954-20bb3c4a-3918-4dcc-a8ec-085b1a1aa0ac.png)

- Every edge has a weight/distance
- User input tells the program two things
    - the name of a start node
    - the name of an end node
- The goal is to find the shortest path(s) (aka: path with minimum weight)
- And then print out that shortest path
- And print out the cost of that shortest path

## What specifically needs to be done? (Checklist)

1. #### Get the code setup
    - Get the code on your machine
        - (if you are comfortable with git, just clone the repo)
        - [zip file download here](https://github.com/jeff-hykin/prolog_world/archive/refs/heads/master.zip) or use the green "Code" button^
        - unzip the code after downloading
    - Open up your terminal/console and `cd` to wherever you unzipped the code
        - ex: `cd ~/Downloads/prolog_world`
    - If you're on any operating system that is not Windows:
        - run `commands/start` in your terminal, and (although it might take a while) Prolog should auto-install for you
        - (if something goes wrong, here's [a link](https://www.swi-prolog.org/Download.html) to the manual installation)
    - If you're on on Windows, try installing SWI Prolog manually
        - I recommend the Docker version [found here](https://hub.docker.com/_/swipl/)
        - And here's [a link](https://www.swi-prolog.org/Download.html) to the normal install instructions
        - (You can also use WSL or Virtualbox to run Linux, and then follow the linux instructions)
    - Protip:
        - if you use VS Code, there's a [Prolog extension](https://marketplace.visualstudio.com/items?itemName=rebornix.prolog) that adds basic syntax highlighting
2. #### Make sure that running `./main/1_path_finder/find_path.pl` 
    - (how do I run the code? [answer](https://github.com/jeff-hykin/prolog_world#how-do-i-run-the-code))
    - finds the shortest path(s)
    - prints out the path (a list of edges) and cost like this: <br> 
    ```
    path from: m
    path to: p
    is: [[m,p]]
    cost: 8
    ```
    - if there are multiple shortest paths, print out the result like this: <br> 
    ```
    path from: m
    path to: p
    is: [[m,z],[z,p]]
    is: [[m,f],[f,p]]
    cost: 8
    ```
    - (there's example code in `main/1_path_finder/find_path.pl`, so most of that formatting is already there)
3. #### To submit the code
    - right click on the `main/` folder 
    - On MacOS => click "compress" which will make a zip file
    - On Windows => select "send to", then select "zip file"
    - On Linux => your IQ is high enough that you've probably already made the zip file, so good job
    - upload that zip

## How do I understand the code?

Prolog is weird, really weird.
- If you want to figure out how to do a specific operation, like assignment, comparision, print out data, etc. I recommend taking a look at [this site](https://www.tutorialspoint.com/prolog/prolog_basic_programs.htm)
- If you want to understand the system ("fact" vs "rule" vs "query", and all the syntax)
    - I'd start with Dr. Ioeger's notes [here](https://people.engr.tamu.edu/ioerger/prolog.txt) 
    - Then I'd look under the Tutorial tab of the [official website](https://www.swi-prolog.org/)
        - Note: "printing messages" (e.g. Hello World) is under the Advanced tab ... which gives you some idea about the weirdness of Prolog

## How do I run the code?
- run `echo "mp" | swipl -q  ./main/1_path_finder/find_path.pl` 
    - this will try to find a path from `m` to `p`
- `swipl` is the Prolog command (swi-prolog -> swi-pl -> swipl)
- if you run just `swipl` press Ctrl+D to exit/escape back to your normal terminal


<br>
<br>
<br>
<br>
<br>

<!--  -->
<!--  -->
# For the 2nd Prolog Problem (assignment #4)
<!--  -->
<!--  -->

## Whats the general objective?

- The goal is to make an agent that gets through the wumpus world maze without dying

![WumpusWorld](https://user-images.githubusercontent.com/17692058/137557916-d0179dde-e619-40ea-a965-8777c33fde23.png)

- (Your agent ^ is the robot-person)
- Wumpus World is dark (your agent can't see anything)
- However, the agent can perceive a few things
    - Stench (wumpus is nearby)
    - Breeze (pit of spikes is nearby)
    - Glitter (gold is nearby)
    - Bump (agent's last action made them hit a wall)
    - Scream (agent's arrow hit and killed the wumpus)

- And the agent can perform different actions
    - `goforward`
    - `turnleft`
    - `turnright`
    - `grab` (can only grab gold)
    - `shoot` (agent only has 1 arrow to shoot)
    - `climb` (tries to climb the ladder, only works if at the entrace of the cave)

- The per-instance objective is to:
    - not die (pit and wumpus cause instant death)
    - get the gold (1000 points)
    - then go back to the entrace and climb the ladder to leave the cave
- The overall objective is to have a high score-per-timestep
    

## What specifically needs to be done? (Checklist)

1. #### Get the code setup
    - [Download this code](https://github.com/jeff-hykin/prolog_world/archive/refs/heads/master.zip) (the green "Code" button^) and unzip it
    - Open up your terminal and `cd` `cd ~/Downloads/prolog_world` (or whereever you put the unzipped code)
    - If you're on any operating system that is not Windows 
        - run `commands/start` and Prolog should auto-install for you
        - (if something goes wrong, here's [a link](https://www.swi-prolog.org/Download.html) to the manual installation)
    - If you're on on Windows, try installing SWI Prolog manually
        - I recommend the Docker version [found here](https://hub.docker.com/_/swipl/)
        - And here's [a link](https://www.swi-prolog.org/Download.html) to the normal install instructions
        - (You can also use WSL or Virtualbox to run Linux, and then follow the linux instructions)
2. #### Add you content
    - add a `report.md` inside the `main/2_wumpus_world/` folder
        - describe your general approach (1 paragraph, although feel free to write more)
        - informally site any sources used
    - edit the `my_agent.pl` to improve the definition of the existing `run_agent(Percept,Action)`
3. #### to submit the code (same as before)
    - right click on the `main/` folder 
    - On MacOS => click "compress" which will make a zip file
    - On Windows => select "send to", then select "zip file"
    - On Linux => your IQ is high enough that you've probably already made the zip file, so good job
    - upload that zip

## How does the code work?

- the code inside `wumpus_world.pl` randomizes the location of the wumpus/gold/pit etc each time its run
- to run the wumpus world execute  `echo "" | swipl -q ./main/2_wumpus_world/main.pl`
- the `run_agent(Percept,Action)` inside `my_agent.pl` will be given a perception, and should decide on an action
- the `Percept` value will be a list, specifically a list of yes/no values
    - the list will specifically be in this order: `[Stench, Breeze, Glitter, Bump, Scream]`
    - for example: `[yes,no,yes,no,no]` means both the wumpus and the gold are nearby
- after 128 timesteps (if your agent hasn't died or left) the program will automatically stop
