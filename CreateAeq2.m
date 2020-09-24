clc
clear all

load N N;
load j j;
load Cij1 Cij1;
load U0 U0;
Aeq2 = []; % -  ограничение для поиска Uij при условии неравенства;
a = 1;

for i = 1:1:N+1
    if i == 1
for e = 1:1:N*j
 Aeq2(i, e) = Cij1(e);
end
for e = (N*j)+1:1:N*(j+1)
  Aeq2(i, e)  =  0; 
end
    end
    if i > 1
       for e = (N*j)+a:1:N*(j+1)
 Aeq2(i, e) = -1;
 a = a+1;
 break
end 
    end   
end

save Aeq2 Aeq2