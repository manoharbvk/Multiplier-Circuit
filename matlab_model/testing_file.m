% % ctr=0;
% % med=0;
% % n=8;%number of digits in the numbers
% % m=2*n;
% % for i=0:255
% %     inp1 = dec2bin(i,8);
% %     for j=0:255
% %         inp2=dec2bin(j,8);
% %         [a,b]=convertCharsToStrings(inp1,inp2);
% %         answer_final1=multiplier_in_making(inp1,inp2,'0000');
% %         answer_final=uint16(bin2dec(answer_final1));
% %         accurate_ans=(i*j);
% %         error=abs(accurate_ans-answer_final);
% %         
% %         if(error~=0)
% %             ctr=ctr+1;
% %             med=med+error;
% %         end
% %         %disp(i+"and "+j+" the result is "+answer_final);
% %     end
% %     
% % end
% % err=ctr/(2^m);
% % disp("error rate is "+err*100+"%");
% % med1=med/(2^m);
% % disp("med(mean error distance is "+med1);
% 
% 
% 
% 
% 
% 
% 
% ctr=0;
% med=10;
% n=8;%number of digits in the numbers
% m=2*n;
% i=23;
% j=35;
% 
% inp1 = dec2bin(i,8);
% inp2=dec2bin(j,8);
% answer_final1=multiplier_in_making(inp1,inp2,'0000');
% answer_final=uint16(bin2dec(answer_final1));
% accurate_ans=(i*j);
% error=abs(accurate_ans-answer_final);
% disp(accurate_ans);
% disp(answer_final);
% med=med+error;
% disp(error);
% 
%  disp(med);
% 
% 



a=65534;
disp(a);
a=a+1;
disp(a);
a=a+1;
disp(a);
a=a+1;
disp(a);
