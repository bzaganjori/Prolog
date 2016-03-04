merge([],L,L).
merge(L,[],L).
merge([X|L1],[Y|L2],[X|L]):-X=<Y, merge(L1,[Y|L2],L).
merge([X|L1],[Y|L2],[Y|L]):-X>Y, merge([X|L1],L2,L).