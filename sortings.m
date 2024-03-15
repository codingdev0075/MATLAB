k=1;
sp=0;
c=0;
c1=0;
for n=10:10:1000
xne(k)=n;
a=round(rand(1,n)*100);
ycd(k)=bubbleSort(a);
[d,cp]=merge_sort(a,c1);
ycb(k)=cp;
[e,cp]=quick_sort(a,c1);
ycq(k)=cp;
yci(k)=insertion_sort(a,n);
ycs(k)=selection_sort(a);
c=0;
c1=0;
k=k+1;
end 
plot(xne,ycd,xne,yci,xne,ycb,xne,ycq,xne,ycs);
title('SORT TEST')
xlabel('NUMBER of ELEMENTS')
ylabel('NUMBER OF COMPARISIONS')
legend('bubblesort','insertionsort','mergesort','quicksort','selectionsort')
grid on