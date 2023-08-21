ctr=0;
med=0;

wed=0;
double red=0;
mred=0;
n=8;%number of digits in the numbers
m=2*n;
for i=0:255
    inp1 = dec2bin(i,8);
    for j=0:255
        inp2=dec2bin(j,8);
        
        answer_final1=multiplier_in_making(inp1,inp2,'0111');
        answer_final=uint16(bin2dec(answer_final1));
        accurate_ans=(i*j);
        error=abs(accurate_ans-answer_final);
        
        
        error=int32(error);
        
        error=double(error);
        if(error~=0)
            ctr=ctr+1;
            med=med+error;
            
            if(wed<error)
                wed=error;
            end
            red=error/accurate_ans;
            mred=mred+red;
            
        end
        
    end
    
end
err=ctr/(2^m);

med1=med/(2^m);

mred1=mred/(2^m);

smax=(2^n)*(2^n);
nmed=med1/smax;
disp("Error rate is "+err*100+"%");
disp("MED(mean error distance is "+med1);
disp("RED(relative error distance is "+red);
disp("MRED(mean relative error distance is "+mred1);
disp("WED(worst error distance is "+wed);
disp("NMED(normalized mean error distance is "+nmed);