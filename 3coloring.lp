%n1
% | \
% | n3 - n4
% | /   
%n2
node(n1;n2;n3;n4).
edge((n1,n2);(n2,n3);(n1,n3);(n3,n4)).
edge(X,Y) :- edge(Y,X).

color(red;green;blue).

1 {coloring(X,C) : color(C)} 1 :- node(X).

:-edge(X,Y), coloring(X,C), coloring(Y,C), node(X), node(Y).

#show coloring/2.
