function [a,b] = matDP(v,p)
%[a,b] = matDP(7,5)
%
a=zeros(4,5);
a(1,1)=v;
a(1,2)=2;
b(1)=1;
a(2,1)=3;
a(2,2)=4;
a(2,3)=5;
b(2)=2;
a(3,2)=6;
a(3,3)=7;
a(3,4)=8;
b(3)=3;
a(4,3)=9;
a(4,4)=p;
b(4)=4;
end