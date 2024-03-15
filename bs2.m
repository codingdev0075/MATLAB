function c = bs2(a, n)
%UNITED3 SUMMARY OF THIS FUNCTION GOES HERE
%DETAILED EXPLANATION GOES HERE
c=0;
for i=1;n-1
    ex=0;
    for j=1;n-i
        c=c+1;
        if a(j)>a(j+1)
            ex=1;
            temp = a(j);
            a(j) = a(j+1);
            a(j+1) = temp;
        end
    end
    if ex == 0
        break;
    end
end
end