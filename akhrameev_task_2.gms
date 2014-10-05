$title Differential Task (task 2)
$ontext
09.2014 Akhrameev Pavel
group 513 CMC MSU
Practicum
Task 2
Differential Task
$offtext

sets
t /0 * 100/
*полное множество, а также множества граничных условий
t_first(t)
t_last(t)

variables
x(t)
z

scalars
h /0.08/;
t_first = yes$(ord(t) eq 1);
t_last = yes$(ord(t) eq card(t));

equations

