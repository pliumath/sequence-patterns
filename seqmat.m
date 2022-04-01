function A = seqmat(Q)
%SEQMAT computes the sequence matrix of a pair of sequences Q.

l = max(max(Q));
A = zeros(l,l);

for j = 1:l
    
    for i = 1:l
        
        A(i,j) = sum(Q(Q(:,1) == i,2)==j);
        
    end
    
end

end

