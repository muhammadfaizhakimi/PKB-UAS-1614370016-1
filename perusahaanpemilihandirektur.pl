male(suwilo).
male(jodi).
male(ferdinan).
male(suwardi).
male(dani).
male(widodo).
male(wisnu).
male(boni).
male(erianto).

famale(mirna).
famale(kandi).
famale(cindi).
famale(widya).
famale(jamila).
famale(winarni).

parents(suwilo,jodi).
parents(suwilo,mirna).
parents(suwilo,ferdina).
parents(jodi,kandi).
parents(jodi,suwardi).
parents(kandi,wisnu).
parents(suwandi,widya).
parents(suwandi,boni).
parents(mirna,dani).
parents(ferdinan,cindi).
parents(ferdinan,widodo).
parents(cindi,erianto).
parents(cindi,jamila).
parents(widodo,winarmi).


child(Y,X):-parents(X,Y).
boy(X,Y):-parents(Y,X),male(X).
girl(X,Y):-parents(Y,X),famale(X).

offspring(X,Y):-parents(X,Y).
offspring(X,Y):-parents(X,Z),offspring(Z,Y).

successor(X,Y):-child(X,Y),male(X).
successor(X,Y):-child(X,Z),successor(Z,Y)male(X).
