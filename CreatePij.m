function Z = CreatePij(x)
load N N;
load j j;
load gamma gamma;
load ne ne;

Pij = [];
Z = 0;
r = 1;
for i=1:1:N
    load Pij0 Pij0;
    for e=1:1:j
        Pij(i, e) = Pij0(e);
        Z = Z + ((1-gamma)*Pij(i, e)*x(r)*ne(i)) + (gamma*(ne(i)-(ne(i)^2))*(Pij(i, e)^2)*x(r));
        r = r+1;
    end
end

Q = 0;
Q1 = 0;
Q2 = 0;
r = 1;
Pijk = [];
Pijm = [];
for k=1:1:N-1
        load Pij0 Pij0;
         for e = 1:1:j
                     Pijk(k, e) = Pij0(e);
                     Q1 = Q1 + (Pijk(k, e)*ne(k)*x(r));
                     r = r+1;
         end
        for m = k+1:1:N
           for e = 1:1:j
             Pijm(m, e) = Pij0(e);
             Q2 = Q2 + (ne(m)*Pijm(m, e)*x(r));
             r = r + 1;
           end
        end
        Q = Q +(Q1*Q2);
        Q1 = 0;
        Q2 = 0;
        r = (k*j)+1;
end

Z = Z -2*gamma*Q;
save Pij Pij
end


