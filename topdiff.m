function [d,C] = topdiff(Q,perm)
%TOPDIFF computes the difference between the sequence topologies reprsented
%by sequences in Q by Munkres algorithm (default) or by searching all
%permutations (perm == true). 

%TOPDIFF (Munkres algorithm) requires Sensor Fusion and Tracking Toolbox.

n = size(Q,1);
l = max(max(Q));
A = seqmat(Q);

if nargin > 1 && perm == true
    
    P = perms(1:l);
    
    s = 0;
    
    for i = 1:size(P,1)
        
        p = P(i,:);
        X = sparse(1:l,p,1);
        
        t = trace(X*A);
        
        if t > s
            s = t;
            C = full(X)';
        end
        
    end
    
    d = n - s;
    
else
    
    B = n - A;
    C = assignmunkres(B,n);
    s = 0;
    for i = 1:size(C,1)
        
        s = s + A(C(i,1),C(i,2));
        
    end
    
    C = sortrows(C);
    d = n - s;
    
end

end

