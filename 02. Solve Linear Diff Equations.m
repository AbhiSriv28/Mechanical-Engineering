timeinterval=linspace(0,10);
initialState=[1.0981 0 0 2];
odefun=@(T,x) [x(2); -100.*(x(1)-1)+9.81.*cos(x(3))+x(1).*x(4).*x(4); x(4)
; -2.*x(4).*x(2)./x(1)-9.81.*sin(x(3))./x(1)];

[time, stateMatrix]= ode45(odefun, timeinterval,initialState);

r=stateMatrix(:,1);
theta=stateMatrix(:,3);
plot(time, r);
figure()
plot(time, theta);
