r=0.02:0.00001:0.06;
beta=(35.55)^0.5;
P1=0.02*beta;
P2=0.06*beta;
p=r.*beta;

A=besselk(1,P2)/(besselk(1,P2)*besseli(0,P1)+besselk(0,P1)*besseli(1,P2));
B=besseli(1,P2)/(besselk(1,P2)*besseli(0,P1)+besselk(0,P1)*besseli(1,P2));
T_mod=A*besseli(0,p)+B*besselk(0,p);
T=T_mod.*(160)+10;
plot(r.*100,T)
xlabel('Radius (cm)') 
ylabel('T(r) (degC)') 
