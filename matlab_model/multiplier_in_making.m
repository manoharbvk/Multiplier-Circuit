function [answer_final] = multiplier_in_making(a,b,trunc)


a7 = str2num(a(1:1));
a6 = str2num(a(2:2));
a5 = str2num(a(3:3));
a4 = str2num(a(4:4));
a3 = str2num(a(5:5));
a2 = str2num(a(6:6));
a1 = str2num(a(7:7));
a0 = str2num(a(8:8));

b7 = str2num(b(1:1));
b6 = str2num(b(2:2));
b5 = str2num(b(3:3));
b4 = str2num(b(4:4));
b3 = str2num(b(5:5));
b2 = str2num(b(6:6));
b1 = str2num(b(7:7));
b0 = str2num(b(8:8));

trunc3 = str2num(trunc(1:1));
trunc2 = str2num(trunc(2:2));
trunc1 = str2num(trunc(3:3));
trunc0 = str2num(trunc(4:4));

trunc00=and(not(trunc0),b0);
trunc01=and(not(trunc0),b1);
trunc02=and(not(trunc0),b2);
trunc03=and(not(trunc0),b3);


%disp(trunc00);
%000-1st zero is trunc bit number and 2nd zero is bit of b, and third zero
%is bit of a;

trunc000=and(trunc00,a0);
trunc001=and(trunc00,a1);
trunc002=and(trunc00,a2);
trunc003=and(trunc00,a3);

trunc010=and(trunc01,a0);
trunc011=and(trunc01,a1);
trunc012=and(trunc01,a2);

trunc020=and(trunc02,a0);
trunc021=and(trunc02,a1);

trunc030=and(trunc03,a0);

trunc10=and(not(trunc1),b0);
trunc11=and(not(trunc1),b1);
trunc12=and(not(trunc1),b2);
trunc13=and(not(trunc1),b3);
trunc14=and(not(trunc1),b4);
trunc15=and(not(trunc1),b5);
trunc16=and(not(trunc1),b6);
trunc17=and(not(trunc1),b7);


trunc104=and(trunc10,a4);
trunc105=and(trunc10,a5);
trunc106=and(trunc10,a6);
trunc107=and(trunc10,a7);

trunc113=and(trunc11,a3);
trunc114=and(trunc11,a4);
trunc115=and(trunc11,a5);
trunc116=and(trunc11,a6);

trunc122=and(trunc12,a2);
trunc123=and(trunc12,a3);
trunc124=and(trunc12,a4);
trunc125=and(trunc12,a5);

trunc131=and(trunc13,a1);
trunc132=and(trunc13,a2);
trunc133=and(trunc13,a3);
trunc134=and(trunc13,a4);


trunc140=and(trunc14,a0);
trunc141=and(trunc14,a1);
trunc142=and(trunc14,a2);
trunc143=and(trunc14,a3);

trunc150=and(trunc15,a0);
trunc151=and(trunc15,a1);
trunc152=and(trunc15,a2);

trunc160=and(trunc16,a0);
trunc161=and(trunc16,a1);

trunc170=and(trunc17,a0);




trunc21=and(not(trunc2),b1);
trunc22=and(not(trunc2),b2);
trunc23=and(not(trunc2),b3);
trunc24=and(not(trunc2),b4);
trunc25=and(not(trunc2),b5);
trunc26=and(not(trunc2),b6);
trunc27=and(not(trunc2),b7);


trunc217=and(trunc21,a7);

trunc226=and(trunc22,a6);
trunc227=and(trunc22,a7);

trunc235=and(trunc23,a5);
trunc236=and(trunc23,a6);
trunc237=and(trunc23,a7);

trunc244=and(trunc24,a4);
trunc245=and(trunc24,a5);
trunc246=and(trunc24,a6);
trunc247=and(trunc24,a7);

trunc253=and(trunc25,a3);
trunc254=and(trunc25,a4);
trunc255=and(trunc25,a5);
trunc256=and(trunc25,a6);

trunc262=and(trunc26,a2);
trunc263=and(trunc26,a3);
trunc264=and(trunc26,a4);
trunc265=and(trunc26,a5);

trunc271=and(trunc27,a1);
trunc272=and(trunc27,a2);
trunc273=and(trunc27,a3);
trunc274=and(trunc27,a4);



trunc35=and(not(trunc3),b5);
trunc36=and(not(trunc3),b6);
trunc37=and(not(trunc3),b7);

trunc357=and(trunc35,a7);

trunc366=and(trunc36,a6);
trunc367=and(trunc36,a7);

trunc375=and(trunc37,a5);
trunc376=and(trunc37,a6);
trunc377=and(trunc37,a7);

% we have got the 64 required bits

%we are calculating the left side part
sa0=trunc000;
[sa1,ca1]=half_adder(trunc001,trunc010);
[sa2,ca2]=full_adder(trunc002,trunc011,trunc020);
[sa3,ca3]=approximate_compressor(trunc003,trunc012,trunc021,trunc030);
[sa4,ca4]=approximate_compressor(trunc104,trunc113,trunc122,trunc131);
[sa5,ca5]=approximate_compressor(trunc105,trunc114,trunc123,trunc132);
[sa6,ca6]=approximate_compressor(trunc106,trunc115,trunc124,trunc133);
[sa7,ca7,error1]=approximate_compressor_edc(trunc107,trunc116,trunc125,trunc134);
[sa8,ca8]=full_adder(trunc217,trunc226,trunc235);
[sa9,ca9]=half_adder(trunc227,trunc236);
[sa10]=trunc237;

[sb0]=trunc140;
[sb1,cb1]=half_adder(trunc141,trunc150);
[sb2,cb2]=full_adder(trunc142,trunc151,trunc160);
%in the next line the edc must be used
[sb3,cb3,error2]=approximate_compressor_edc(trunc143,trunc152,trunc161,trunc170);

[sb4,cb4,ci4]=accurate_compressor(trunc244,trunc253,trunc262,trunc271,0);
[sb5,cb5,ci5]=accurate_compressor(trunc245,trunc254,trunc263,trunc272,ci4);
[sb6,cb6,ci6]=accurate_compressor(trunc246,trunc255,trunc264,trunc273,ci5);
[sb7,cb7,ci7]=accurate_compressor(trunc247,trunc256,trunc265,trunc274,ci6);

[sb8,cb8,ci8]=accurate_compressor(trunc357,trunc366,trunc375,0,ci7);
[sb9,cb9]=full_adder(trunc367,trunc376,ci8);
sb10=trunc377;


%stage2 completed
error3=and(error1,error2);
ans2=or(sa2,ca1);
ans3=or(sa3,ca2);
[ans4,tcar4]=full_adder(sa4,ca3,sb0);
[tsum5,tcar5]=full_adder(sa5,ca4,sb1);
[tsum6,tcar6]=approximate_compressor(sa6,ca5,sb2,cb1);
[tsum7,tcar7]=approximate_compressor(sa7,ca6,sb3,cb2);
[tsum8,tcar8,ci8]=accurate_compressor(sa8,ca7,sb4,cb3,error3);
[tsum9,tcar9,ci9]=accurate_compressor(sa9,ca8,sb5,cb4,ci8);
[tsum10,tcar10,ci10]=accurate_compressor(sa10,ca9,sb6,cb5,ci9);
[tsum11,tcar11]=full_adder(sb7,cb6,ci10);
[tsum12,tcar12]=full_adder(sb8,cb7,tcar11);
[tsum13,tcar13]=full_adder(sb9,cb8,tcar12);
[tsum14,tcar14]=full_adder(sb10,cb9,tcar13);


%end of stage 3

ans0=sa0;
ans1=sa1;
%we have ans2
%we have ans3
%we have ans4
[ans5,c5]=half_adder(tsum5,tcar4);
[ans6,c6]=full_adder(tsum6,tcar5,c5);
[ans7,c7]=full_adder(tsum7,tcar6,c6);
[ans8,c8]=full_adder(tsum8,tcar7,c7);
[ans9,c9]=full_adder(tsum9,tcar8,c8);
[ans10,c10]=full_adder(tsum10,tcar9,c9);
[ans11,c11]=full_adder(tsum11,tcar10,c10);
[ans12,c12]=half_adder(tsum12,c11);
[ans13,c13]=half_adder(tsum13,c12);
[ans14,c14]=half_adder(tsum14,c13);
[ans15]=or(tcar14,c14);
%disp(ans0);
answer_final=append(int2str(ans15),int2str(ans14),int2str(ans13),int2str(ans12),int2str(ans11),int2str(ans10),int2str(ans9),int2str(ans8),int2str(ans7),int2str(ans6),int2str(ans5),int2str(ans4),int2str(ans3),int2str(ans2),int2str(ans1),int2str(ans0));
%disp(answer_final);
end