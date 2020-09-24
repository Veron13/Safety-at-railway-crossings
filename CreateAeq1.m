clc
clear all

load N N;
load j j;
load U0 U0;
Aeq1 = []; % -  ограничение для поиска Uij при условии равенства;
k = 1;
a = 1;

for i = 1:1:N*2
    if i <= N
        for e = 1:1:N*(j+1)
             if fix ((e-1)/j)+1 == i
            Aeq1(i, e) = 1;
        end
        end
    end
    if i > N
      for e = 1:1:N*(j+1)
           if fix ((e-1)/j)+1 == i-N
          Aeq1(i, e) = k;
          k = k+1;  
           end
           if k>j
              k = 1; 
           end
           if e == (N*j)+a
                Aeq1(i, e) = -1;
           end
      end
                      a = a+1;
    end
end

save Aeq1 Aeq1