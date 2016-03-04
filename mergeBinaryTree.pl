%GeneralCase
merge(T1, nil, T1).
merge(nil, T2, T2).
merge(t(nil,X,nil), t(nil,X,nil), t(nil,X,nil)).

%RecursiveCases
merge(t(A,B,C), t(nil,Y,nil), t(A1,B,C)) :- Y=<B,merge(A, t(nil,Y,nil), A1).
merge(t(A,B,C), t(nil,Y,nil), t(A,B,C1)) :- Y>B,merge(C, t(nil,Y,nil), C1).
merge(t(A,B,C),t(X,Y,Z),t(A1,B,C)) :- Y=<B,merge(A,t(X,Y,Z),A1).
merge(t(A,B,C),t(X,Y,Z),t(A,B,C1)) :- Y>B,merge(C,t(X,Y,Z),C1).
