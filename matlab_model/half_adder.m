function [sum_half,carry_half] = half_adder(a,b)
sum_half = xor(a,b);
carry_half=and(a,b);
return 
end