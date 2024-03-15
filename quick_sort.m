%quicksort
function [dataOut,cp] = quick_sort(data,cp)
lenD = size(data,2);
ind = cast(floor(lenD/2),'uint8');
j = 1;
k = 1;
L = [];
R = [];
if(lenD<2)
 dataOut = data;
else
 pivot = data(ind);
 for i=1:lenD
 if(i~=ind)
 if(data(i)<pivot)
 L(j) = data(i);
 j = j+1;
 cp=cp+1;
 else
 R(k) = data(i);
 k = k+1;
 cp=cp+1;
 end
 end
 end
 [L,cp] = quick_sort(L,cp);
 [R,cp] = quick_sort(R,cp);
 dataOut = [L pivot R];
 cp=cp+1;
end