function [x] = perkelties(matric)
% Sia F-ja randamas taskas kuris kerta x asi.
%Parametrai:
%   @matric - pradine matrica.
p=5; %Putna=5
v=7;   %Donatas=7
[c,d]=matric(v,p);
Cd(1)=-(c(1,2)/c(1,1)); 
Dd(1)=(d(1)/c(1,1));
n=length(c(1,:));
n=n-1;
for i=2:n 
 Cd(i)=c(i,i+1)/(c(i,i)+(Cd(i-1)*c(i,i-1)));  

 Dd(i)=(d(i)-(Dd(i-1)*c(i,i-1)))/(c(i,i)+(Cd(i-1)*c(i,i-1)));

end
x(n)=Dd(n);

for i=n-1:-1:1
 x(i)=(Cd(i)*x(i+1))+Dd(i)
end 

%  x(3)=(Cd(3)*x(4))+Dd(3)
%  x(2)=(Cd(2)*x(3))+Dd(2)   
%  x(1)=(Cd(1)*x(2))+Dd(1)


for i=1:n
 disp(['X', num2str(i), ' = ',num2str(x(i))]);
end
end