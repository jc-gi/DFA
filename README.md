# DFA
Deterministic Finite Automata

*F sharp, Rust, Ruby and Perl validate Regular Expression: (a(bb*)*)
*Golang and Kotlin validate Regular Expression: (aa*bb*)

### What is Deterministic Finite Automata?
Deterministic finite automata (or DFA) are finite state machines that accept or reject strings of characters by parsing them through a sequence that is uniquely determined by each string. The term “deterministic” refers to the fact that each string, and thus each state sequence, is unique. In a DFA, a string of symbols is parsed through a DFA automata, and each input symbol will move to the next state that can be determined.

These machines are called finite because there are a limited number of possible states which can be reached. A finite automaton is only called deterministic if it can fulfill both conditions. DFAs differ from non-deterministic automata in that the latter are able to transition to more than one state at a time and be active in multiple states at once.

In practice, DFAs are made up of five components (and they’re often denoted by a five-symbol set known as a 5-tuple). These components include:

A finite number of states
A set of symbols known as the alphabet, also finite in number
A function that operates the transition between states for each symbol
An initial start state where the first input is given or processed
A final state or states, known as accepting states.

