%mergesort
function [y,cp] = merge_sort(x,cp)
n = length(x);
if n==1
 y = x;
else
 m = floor(n/2);
 [left,cp] = merge_sort(x(1:m),cp); % sorting left part of vector
 [right,cp] = merge_sort(x(m+1:n),cp); % sorting right part of vector
 [y,cp] = merge(left,right,cp); % with using 'merge' function, 2 part will be merged
 cp=cp+1;
end


%% Merge Algorithm:
function [z,cp] = merge(x,y,cp);
n = length(x); m = length(y); z = zeros(1,n+m);
ix = 1; 
iy = 1; 
for iz=1:(n+m)
 cp=cp+1;
 % Deteremin the iz-th value for the merged array.
 if ix > n
 % All done with x-values. Select the next y-value.
 z(iz) = y(iy); iy = iy+1;
 cp=cp+1;
 elseif iy > m
 % All done with y-values. Select the next x-value.
 z(iz) = x(ix); ix = ix + 1;
 cp=cp+1;
 elseif x(ix) <= y(iy)
 % The next x-value is less than or equal to the next y-value
 z(iz) = x(ix); ix = ix + 1;
 cp=cp+1;
 else
 % The next y-value is less than the next x-value
 z(iz) = y(iy); iy = iy + 1;
 cp=cp+1;
 end
end