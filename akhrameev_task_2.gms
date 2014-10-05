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

variables
x(t)
z

scalars
h /0.08/
a /0.2/
default_level /1.0/
x_0 /10.0/;

equations
J;
J..      z =e= sum(t, sqr( x(t) - x(t-1) - h*( a*sqrt(x(t-1)) - sin(x(t-1)) ) ));
x.l(t) = default_level;
x.fx(t)$(ord(t) eq 1) = x_0;

model diffTask /J/;

solve diffTask minimizing z using nlp;

Parameter PLOT_1 data for plotter;
PLOT_1("x",t,"y")=x.l(t);
* .l (level) is used to get values (to make complilable)
PLOT_1("x",t,"x")=ord(t);
$libinclude gnuplotxyz PLOT_1 x y
