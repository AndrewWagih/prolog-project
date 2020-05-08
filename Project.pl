programmingLanguage(javascript).

markupLanguage(html).
styleSheetLanguage(css).
preProcessor(sass,css).

generated(javascript,algoliaPlaces).
generated(javascript,animeJs).
generated(javascript,aos).
generated(javascript,bideoJs).
generated(javascript,chartJs).
generated(javascript,tweenJS).
generated(javascript,threeJs).
generated(javascript,jquery).


generated(javascript,vue).
generated(javascript,angular).
generated(javascript,react).
generated(javascript,aurelia).
generated(javascript,ionic).
generated(javascript,nextJs).

generated(javascript,nodeJs).

jsLibrary(algoliaPlaces,javascript):-
     programmingLanguage(javascript),generated(javascript,algoliaPlaces).
jsLibrary(animeJs,javascript):-
     programmingLanguage(javascript),generated(javascript,animeJs).
jsLibrary(aos,javascript):-programmingLanguage(javascript),generated(javascript,aos).
jsLibrary(bideoJs,javascript):-
     programmingLanguage(javascript),generated(javascript,bideoJs).
jsLibrary(chartJs,javascript):-
     programmingLanguage(javascript),generated(javascript,chartJs).
jsLibrary(tweenJS,javascript):-
     programmingLanguage(javascript),generated(javascript,tweenJS).
jsLibrary(threeJs,javascript):-
     programmingLanguage(javascript),generated(javascript,threeJs).
jsLibrary(jquery,javascript):-
     programmingLanguage(javascript),generated(javascript,jquery).


jsFramework(vue,javascript):-
     generated(javascript,vue),programmingLanguage(javascript).
jsFramework(angular,javascript):-
     generated(javascript,angular),programmingLanguage(javascript).
jsFramework(react,javascript):-
     generated(javascript,react),programmingLanguage(javascript).
jsFramework(aurelia,javascript):-
     generated(javascript,aurelia),programmingLanguage(javascript).
jsFramework(ionic,javascript):-
     generated(javascript,ionic),programmingLanguage(javascript).
jsFramework(nextJs,javascript):-
     generated(javascript,nextJs),programmingLanguage(javascript).


jsRuntimeEnvironment(nodeJs,javascript):-
     programmingLanguage(javascript),generated(javascript,nodeJs).


frontEndJavascript(vue,webDelopment):-
     programmingLanguage(javascript),generated(javascript,vue),jsFramework(vue,javascript).
frontEndJavascript(angular,webDelopment):-
     programmingLanguage(javascript),generated(javascript,angular),jsFramework(angular,javascript).
frontEndJavascript(react,webDelopment):-
     programmingLanguage(javascript),generated(javascript,react),jsFramework(react,javascript).
frontEndJavascript(aurelia,webDelopment):-
     programmingLanguage(javascript),generated(javascript,aurelia),jsFramework(aurelia,javascript).
frontEndJavascript(ionic,webDelopment):-
     programmingLanguage(javascript),generated(javascript,ionic),jsFramework(ionic,javascript).
frontEndJavascript(nextJs,webDelopment):-
     programmingLanguage(javascript),generated(javascript,nextJs),jsFramework(nextJs,javascript).

frontEndJavascript(algoliaPlaces,webDelopment):-
     generated(javascript,algoliaPlaces),jsLibrary(algoliaPlaces,javascript),programmingLanguage(javascript).
frontEndJavascript(animeJs,webDelopment):-
     generated(javascript,animeJs),jsLibrary(animeJs,javascript),programmingLanguage(javascript).
frontEndJavascript(aos,webDelopment):-
     generated(javascript,aos),jsLibrary(aos,javascript),programmingLanguage(javascript).
frontEndJavascript(bideoJs,webDelopment):-
     generated(javascript,bideoJs),jsLibrary(bideoJs,javascript),programmingLanguage(javascript).
frontEndJavascript(chartJs,webDelopment):-
     generated(javascript,chartJs),jsLibrary(chartJs,javascript),programmingLanguage(javascript).
frontEndJavascript(tweenJS,webDelopment):-
     generated(javascript,tweenJS),jsLibrary(tweenJS,javascript),programmingLanguage(javascript).
frontEndJavascript(threeJs,webDelopment):-
     generated(javascript,threeJs),jsLibrary(threeJs,javascript),programmingLanguage(javascript).
frontEndJavascript(jquery,webDelopment):-
     generated(javascript,jquery),jsLibrary(jquery,javascript),programmingLanguage(javascript).
frontEndJavascript(bootstrap,webDelopment):-
     markupLanguage(html),styleSheetLanguage(css),programmingLanguage(javascript).
frontEndJavascript(sass,webDelopment):-
     preProcessor(sass,css).
backEnd(nodeJs,webDelopment):-
     programmingLanguage(javascript),generated(javascript,nodeJs),jsRuntimeEnvironment(nodeJs,javascript).



frontEnd([framework,[vue,angular,react,aurelia,ionic,nextJs]]).
frontEnd([library,[algoliaPlaces,animeJs,aos,bideoJs,chartJs,tweenJS,threeJs,jquery]]).

backEnd([javascript,[nodeJs,sailsJsFramework,meteorJsFramework,expressJsFramework]]).
backEnd([php,[laravelFramework,codeigniterFramework,symfonyFramework,phalconFramework,yiiFramework]]).
backEnd([python,[djangoFrmaework,cherrypyFramework,flaskFramework,turbogearsFramework,trypyramidFrameWrok]]).

fast(javascript,python).
fast(python,php).

secure(python,php).
secure(php,javascript).

search(List):-
     frontEnd([List,Z]),write(Z).
search(List):-
     backEnd([List,Z]),write(Z).

len(List):-
     frontEnd([List,Z]),length(Z,L),write(L).
len(List):-
     backEnd([List,Z]),length(Z,L),write(L).

on(Item,List):-
     backEnd([List,Z]),member(Item,Z).
on(Item,List):-
     frontEnd([List,Z]),member(Item,Z).

app(List1,List2):-
     backEnd([List1,Z1]), backEnd([List2,Z2]),append(Z1,Z2,L),write(L).
app(List1,List2):-
     frontEnd([List1,Z1]), backEnd([List2,Z2]),append(Z1,Z2,L),write(L).

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
     backEnd([List,Z]),last(Z,Item),write(Item).
las(List):-
     frontEnd([List,Z]),last(Z,Item),write(Item).

flat(List):-
     backEnd([List|Z]),flatten([List|Z],L),write(L).
flat(List):-
     frontEnd([List|Z]),flatten([List|Z],L),write(L).

sor(List):-
     backEnd([List,Z]),sort(Z,L),write(L).
sor(List):-
     frontEnd([List,Z]),sort(Z,L),write(L).

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

intersect(List1,List2):-
     backEnd([List1,Z1]), backEnd([List2,Z2]),intersection(Z1,Z2,I),write(I).
intersect(List1,List2):-
     frontEnd([List1,Z1]), backEnd([List2,Z2]),intersection(Z1,Z2,I),write(I).

uni(List1,List2):-
     backEnd([List1,Z1]), backEnd([List2,Z2]),union(Z1,Z2,I),write(I).
uni(List1,List2):-
     frontEnd([List1,Z1]), backEnd([List2,Z2]),union(Z1,Z2,I),write(I).

faster(X,Y):-
     fast(X,Y),write(X),write(" -> is Faster").
faster(X,Y):-
     fast(Y,X),write(Y),write(" -> is Faster").
faster(X,Y):-
     fast(X,Z),fast(Z,Y),write(X),write(" -> is Faster").

moreSecure(X,Y):-
     secure(X,Y),write(X),write(" -> is more secure").
moreSecure(X,Y):-
     secure(Y,X),write(Y),write(" -> is more secure").
moreSecure(X,Y):-
     secure(X,Z),secure(Z,Y),write(X),write(" -> is more secure").