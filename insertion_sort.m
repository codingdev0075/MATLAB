%insertionsort
function c1=insertion_sort(a,n)
c1=0;
for i = 2:n
d = i;
while((d > 1) && (a(d) < a(d-1)))
temp = a(d);
a(d) = a(d-1);
a(d-1) = temp;
d = d-1;
c1=c1+1;
end
end