frontEnd([javascript,[vueJsFramework,angularJsFramework,reactJsFramework,aureliaJsFramework,ionicJsFramework,nuxtJsFramework,algoliaPlacesLibrary,animeJsLibrary,aosLibrary,bideoJsLibrary,chartJsLibrary,tweenJSLibrary,threeJsLibrary,jqueryLibrary]]).

backEnd([javascript,[nodeJs,sailsJsFramework,meteorJsFramework,expressJsFramework]]).
backEnd([php,[laravelFramework,codeigniterFramework,symfonyFramework,phalconFramework,yiiFramework]]).
backEnd([python,[djangoFrmaework,cherrypyFramework,flaskFramework,turbogearsFramework,trypyramidFrameWrok]]).


fastBackEnd(javascript,python).
fastBackEnd(python,php).

fastFrontEndFrame(reactJsFramework,nuxtJsFramework).
fastFrontEndFrame(nuxtJsFramework,vueJsFramework).
fastFrontEndFrame(vueJsFramework,angularJsFramework).

secure(python,php).
secure(php,javascript).


search(List):-
     frontEnd([List,Z]),write(Z),write("<- Front-End , Back-End -> "),backEnd([List,Z]),write(Z).
     
search(List):-
     backEnd([List,Z]),write(Z).

len(List):-
     frontEnd([List,Z]),length(Z,L),write(L),write("<- Front-End , Back-End -> "),backEnd([List,Z]),length(Z,L2),write(L2).
len(List):-
     backEnd([List,Z]),length(Z,L),write(L).

on(Item,List):-
     backEnd([List,Z]),member(Item,Z).
on(Item,List):-
     frontEnd([List,Z]),member(Item,Z).

app(List1,List2):-
     frontEnd([List1,Z1]), backEnd([List2,Z2]),append(Z1,Z2,L),write(L).
app(List1,List2):-
     backEnd([List1,Z1]), backEnd([List2,Z2]),append(Z1,Z2,L),write(L).


rev(List):-
     backEnd([List,Z]),reverse(Z,L),write(L).
rev(List):-
     frontEnd([List,Z]),reverse(Z,L),write(L).

del(Item,List):-
     backEnd([List,Z]),delete(Z,Item,L),write(L).
del(Item,List):-
     frontEnd([List,Z]),delete(Z,Item,L),write(L).

sel(Itemrep,Newitem,List):-
     backEnd([List,Z]),select(Itemrep,Z,Newitem, L),write(L).
sel(Itemrep,Newitem,List):-
     frontEnd([List,Z]),select(Itemrep,Z,Newitem, L),write(L).

sub(List1,List2):-
     backEnd([List1,Z1]), backEnd([List2,Z2]),subtract(Z1,Z2,L),write(L).
sub(List1,List2):-
     frontEnd([List1,Z1]), backEnd([List2,Z2]),subtract(Z1,Z2,L),write(L).

las(List):-
     frontEnd([List,Z]),last(Z,Item),write(Item),write(" <- front-end , back-end ->  "),backEnd([List,Z]),last(Z,Item),write(Item).
las(List):-
     backEnd([List,Z]),last(Z,Item),write(Item).


flat(List):-
     backEnd([List|Z]),flatten([List|Z],L),write(L).
flat(List):-
     frontEnd([List|Z]),flatten([List|Z],L),write(L).

sor(List):-
     frontEnd([List,Z]),sort(Z,L),write(L),write(" <- front-end , back-end ->  "),backEnd([List,Z]),sort(Z,L),write(L).
sor(List):-
     backEnd([List,Z]),sort(Z,L),write(L).


indexof(Item,List):-
     backEnd([List,Z]),nth0(N,Z,Item),write(N).
indexof(Item,List):-
     frontEnd([List,Z]),nth0(N,Z,Item),write(N).

isempty(List):-
     backEnd([List,Z]),length(Z,L),L=:=0.
isempty(List):-
     frontEnd([List,Z]),length(Z,L),L=:=0.

add(Item,List):-
     backEnd([List,Z]),write([Item|Z]).
add(Item,List):-
     frontEnd([List,Z]),write([Item|Z]).

next(Item,List):-
     backEnd([List,Z]),nextto(Item,N,Z),write(N).
next(Item,List):-
     frontEnd([List,Z]),nextto(Item,N,Z),write(N).

comp(List1,List2):-
     backEnd([List1,Z1]), backEnd([List2,Z2]),compare(O,Z1,Z2),write(O).
comp(List1,List2):-
     frontEnd([List1,Z1]), backEnd([List2,Z2]),compare(O,Z1,Z2),write(O).

max(List):-
     backEnd([List,Z]),max_member(M,Z),write(M).
max(List):-
     frontEnd([List,Z]),max_member(M,Z),write(M).

min(List):-
     backEnd([List,Z]),min_member(M,Z),write(M).
min(List):-
     frontEnd([List,Z]),min_member(M,Z),write(M).



fasterBackEnd(X,Y):-
     fastBackEnd(X,Y),write(X),write(" -> is Faster").
fasterBackEnd(X,Y):-
     fastBackEnd(Y,X),write(Y),write(" -> is Faster").
fasterBackEnd(X,Y):-
     fastBackEnd(X,Z),fastBackEnd(Z,Y),write(X),write(" -> is Faster").

fasterFrontEndFrame(X,Y):-
     fastFrontEndFrame(X,Y),write(X),write(" -> is Faster").
fasterFrontEndFrame(X,Y):-
     fastFrontEndFrame(Y,X),write(X),write(" -> is Faster").
fasterFrontEndFrame(X,Y):-
     fastFrontEndFrame(X,Z),fastFrontEndFrame(Z,Y),write(X),write(" -> is Faster").
fasterFrontEndFrame(X,Y):-
     fastFrontEndFrame(Y,Z),fastFrontEndFrame(Z,X),write(Y),write(" -> is Faster").


moreSecure(X,Y):-
     secure(X,Y),write(X),write(" -> is more secure").
moreSecure(X,Y):-
     secure(Y,X),write(Y),write(" -> is more secure").
moreSecure(X,Y):-
     secure(X,Z),secure(Z,Y),write(X),write(" -> is more secure").



