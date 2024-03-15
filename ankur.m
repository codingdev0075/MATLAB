
k=1;
temp=0;
c=0;

for n=10:10:100
     xne(k)=n;
     a=round(rand(1,n)*100);
%----------------------------
%----------------------------
ycb(k)=bs1(a,n);
ycd(k)=bs2(a,n);
c=0;
k=k+1;
end
plot (xne,ycb,xne,ycd);
title('bubble sort algorithm')
xlabel('Number of elements')
ylabel('Comparisons')
legend()
grid on

