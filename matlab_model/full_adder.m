function [sum,cout] = full_adder(a,b,cin)
x=xor(a,b);
sum=xor(cin,x);
y=and(x,cin);
z=and(a,b);
cout=or(y,z);
return
end

