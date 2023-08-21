function [sum,carry,Ci] = accurate_compressor(x1,x2,x3,x4,Cin)
[y,Ci] = full_adder(x1,x2,x3);
[sum,carry] = full_adder(y,x4,Cin);
return
end

