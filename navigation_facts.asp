
% DO NOT use room(a ; b). Computation takes forever.
% naming r1 for room on level 1. room number is after underscore
room(r1_h1).
room(r1_h2).
room(r1_h3).
room(r1_110x).
room(r1_124).
room(r1_125).
room(r1_125c).
room(r1_127).
room(r1_128).
room(r1_129d).
room(r1_130).
room(r1_132).
room(r1_133).
room(r1_133a).
room(r1_133b).
room(r1_133c).
room(r1_133d).
room(r1_133e).

% naming e1 for elevator on level 1. then room where elevator is
elevator(e1_h1a).
elevator(e1_h1b).

% naming d1 for door on level 1. room where this door can be found after underscore
door(d1_110x).
door(d1_124).
door(d1_125).
door(d1_125c).
door(d1_127).
door(d1_128).
door(d1_129d).
door(d1_130).
door(d1_132).
door(d1_133a).
door(d1_133b).
door(d1_133c).
door(d1_133d).
door(d1_133e).

hasdoor(r1_100x, d1_110x).
hasdoor(r1_124, d1_124).
hasdoor(r1_125, d1_125).
hasdoor(r1_125c, d1_125c).
hasdoor(r1_127, d1_127).
hasdoor(r1_128, d1_128).
hasdoor(r1_129d, d1_129d).
hasdoor(r1_130, d1_130).
hasdoor(r1_132, d1_132).
hasdoor(r1_133a, d1_133a).
hasdoor(r1_133b, d1_133b).
hasdoor(r1_133c, d1_133c).
hasdoor(r1_133d, d1_133d).
hasdoor(r1_133e, d1_133e).

hasdoor(r1_h3, d1_110x).
hasdoor(r1_h2, d1_124).
hasdoor(r1_128, d1_125).
hasdoor(r1_128, d1_125c).
hasdoor(r1_128, d1_127).
hasdoor(r1_h2, d1_128).
hasdoor(r1_130, d1_129d).
hasdoor(r1_h1, d1_130).
hasdoor(r1_129d, d1_132).
hasdoor(r1_129d, d1_133a).
hasdoor(r1_129d, d1_133b).
hasdoor(r1_129d, d1_133c).
hasdoor(r1_129d, d1_133d).
hasdoor(r1_129d, d1_133e).

acc(r1_h1, r1_h2).
acc(r1_h2, r1_h3).



% UNDER THIS IS OLD WILL DELETE

%what is this saying?
location(E) :- elevator(E).
location(R) :- room(R).


dooracc(R1,D,R2) :- hasdoor(R1,D), hasdoor(R2,D), R1 != R2, door(D), room(R1),
location(R2).
dooracc(R1,D,R2) :- dooracc(R2,D,R1).

acc(L1,L1) :- location(L1).
acc(L1,L2) :- acc(L2,L1), location(L1), location(L2). 
acc(L1,L2) :- acc(L1,L3), acc(L2,L3), location(L1), location(L2), location(L3).



%person(peter). 
%person(ray). 
%person(dana). 
%person(kazunori). 
%person(matteo). 
%person(shiqi). 
%person(jivko). 
%person(stacy).

%inside(peter,l3_508). 
%inside(ray,l3_512).
%inside(dana,l3_510). 
%inside(kazunori,l3_402). 
%inside(matteo,l3_418).
%inside(shiqi,l3_420).
%inside(jivko,l3_432). 
%inside(stacy,l3_502). 

%hide non fluents

%#hide room/1.
%#hide location/1.
%#hide door/1.
%#hide hasdoor/2.
%#hide dooracc/3.
%#hide acc/2.


%#hide person/1.
%#hide inside/2.
