% This buffer is for notes you don't want to save.
% If you want to create a file, visit that file with C-x C-f,
% then enter the text in that file's own buffer.
padre_M(emilio,rosmery).
padre_M(emilio, ruben).

madre_M(jesusa,rosmery).
madre_M(jesusa,ruben).


padre(ruben,jhosmar).
padre(ruben,melody).
padre(ruben,kelvin).

madre_P(jhannet,jhosmar).
madre_P(jhannet,melody).
madre_P(jhannet,kelvin).

madre_H(rosmery,hugo).

% reglas definidas para hacer las consultas

abuelo(X,Z):-padre_M(X,Y),padre(Y,Z);madre_H(Y,Z).
abuela(X,Z):-madre_M(X,Y),madre_P(Y,Z);padre(Y,Z).

hermanos_1(X,Y):-padre_M(Z,X),padre_M(Z,Y).
hermanos_2(X,Y):-padre(Z,X),padre(Z,Y).

tia(X,Y):-padre(Z,Y).
tio(X,Y):-madre_H(Z,Y).

sobrino(Z,X):-hermanos_1(X,Y).
