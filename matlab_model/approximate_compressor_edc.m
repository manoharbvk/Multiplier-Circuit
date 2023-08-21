function [sum,carry,err] = approximate_compressor_edc(x1,x2,x3,x4)
w1=and(x1,x2);
w2=or(x1,x2);
w3=and(x3,x4);
w4=or(x3,x4);
w5=or(w1,w3);
w6=and(w2,w4);
carry=or(w5,w6);
temp=xor(w5,w2);
sum=xor(temp,w4);
err=and(w1,w3);
end

