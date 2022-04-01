clear,clc

l = 5; %number of labels
n = 10; %length of sequences

N = topcard(n,l); %number of sequence topologies of length n and degree l

Q = seqgen(n,l); %generate a pair of random sequences
A = seqmat(Q); 

[d,C] = topdiff(Q); %difference between the sequence topologies











