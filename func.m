function Z = func(x)
load N N;
load jj S;
load gamma gamma;
load nee n;
load P P;





Z=0;
r=1;
for i=1:1:N
    for e=1:1:S
      
        Z = Z + (1-gamma)*P(e)*x(r)*n(i)+gamma*(n(i)-n(i)^2)*P(e)^2*x(r);
        r = r+1;
    end
end

for k=1:1:N-1
    for m=k+1:1:N
        S1=0;
        S2=0;
        for j=1:1:S
             
            S1=S1+P(j)*x(S*(k-1)+j);
        end
        for j=1:1:S
             
            S2=S2+P(j)*x(S*(m-1)+j);
        end
        G=n(k)*n(m)*S1*S2;
        Z=Z-2*gamma*G;
    end
end


end
