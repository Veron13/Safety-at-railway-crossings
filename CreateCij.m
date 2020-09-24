clc
clear all

load N N;
load j j;
load Cij0 Cij0;
load U0 U0;

Cij = [];
k = 1;
for i=1:1:N
    for e=1:1:j
        if U0(i) > 0 & e>U0(i)
         Cij(i, e) = Cij0(e)-Cij0(U0(i));
        end
        if e == j
           Cij(i, e) = Cij0(j);
        end
        if U0(i) == j
       Cij(i, e) = 0;
        end
    end
end
save Cij Cij

Cij1 = [];
k = 1;
for i = 1:1:N
    for e=1:1:j
     Cij1(k) = Cij(i, e); 
     k = k+1;
    end
end
save Cij1 Cij1



