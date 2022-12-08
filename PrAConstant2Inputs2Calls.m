clear;
clc;
file=fopen('PrAConstant2Inputs2Calls.txt', 'w');
N = 3;
M = 5;
count=0; %count the number of PrA functions
v = ones(1,N*M);
a1=[0,0,0,1,0]; %first query answer
a2=[0,0,0,0,1]; %second query answer
e1=[1,0,0,0,0]; %first input
e2=[0,1,0,0,0]; %second input
m2=[0,0,1,0,0]; %constant value v
A = reshape(v,[N,M]);
for i=1:2^(N*M)-1 %iterates over all possible 3*5 binary Matrices
    k = find(v,1);
    v(1:k) = 1-v(1:k);
    A = reshape(v,[N,M]);
    q1 = A(1,:); %first query
    q2 = A(2,:); %second query
    m1 = A(3,:); %program output
        if or(q1(M-2)==1,q2(M-2)==1,m1(M-2)==1 )  % v appears in the function
            if and(q1(M-1)==0,q2(M)==0,or(q1(M)==0,q2(M-1)==0)) %no loops in queries
                if and(or(m1(M)~=0,q1(M)~=0),or(m1(M-1)~=0,q2(M-1)~=0))  %no useless query
                    if and(rank([A;a1;a2;m2])==rank([A;a1;a2;m2;e1]),rank([A;a1;a2;m2])==rank([A;a1;a2;m2;e2])) %nondegenerate
                        if and(rank([A;a2;m2])==rank([A;a2;m2;a1]),rank([A;a1;m2])==rank([A;a1;m2;a2])) %no critical query
                            A
                            count=count+1;
                            fprintf(file,'\nA%i= \n',count)
                            fprintf(file,'%5i %i %i %i %i\n',A')
                        endif
                    endif
                endif
            endif
        endif
end
fclose(file);
