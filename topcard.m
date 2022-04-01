function c = topcard(n,l)
%TOPCARD computes the number of sequence topologies of length n > 0 and
%degree l > 2.

if n>0 && l>=2
    
    c = l^n/factorial(l);
    s = 0;
    
    for m = 2:l
        
        for i = 0:m
            
            s = s + ((l-m)^n/factorial(l-m))*((-1)^i/factorial(i));
            
        end
        
    end
    
    c = c+s;
    
end

end

