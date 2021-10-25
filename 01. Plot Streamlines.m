x=linspace(0,5,100000);
subplot(2,1,1);
hold on
for i=0:2
   at=sqrt((x.^3/3 + (x.^2/2)-i)./(x.*2+1));
   idxt = (at==real(at)); 
   plot(x(idxt),at(idxt),'-r');
   plot(x(idxt),-at(idxt),'-r'); 
end
title('Plot 1: Stream Functions at \psi =0, 1 & 2 for x>=0');
lgd=legend('c=0','c=1','c=2');
hold off
subplot(2,1,2);
[x,y] = meshgrid(-5:5);
u = 4.*y.*x+2.*y;
v = x.*x+x-2*y.^2;
l = streamslice(x,y,u,v,2);
title('Plot 2: Streamlines')
axis tight
