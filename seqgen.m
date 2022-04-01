function Q = seqgen(n,l)
%SEQGEN generates a pair of random sequencesof length n and degree l.

%SEQGEN requires Statistics and Machine Learning Toolbox

a = randsample(1:l,n,true);
b = randsample(1:l,n,true);

Q = sortrows([a;b]');

end

