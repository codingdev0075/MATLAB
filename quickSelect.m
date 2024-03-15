% QuickSelect Algorithm
function [kthLargest, comparisonCount] = quickSelect(arr, k)
    comparisonCount = 0;  % Initialize the comparison count
    left = 1;
    right = numel(arr);

    while left < right
        pivotIndex = partition(arr, left, right);
        comparisonCount = comparisonCount + (right - left);  % Update the count

        if pivotIndex < k
            left = pivotIndex + 1;
        else
            right = pivotIndex;
        end
    end

    kthLargest = arr(k);
end

% Partition function (used in both QuickSort and QuickSelect)
function pivotIndex = partition(arr, low, high)
    pivot = arr(high);
    i = low - 1;

    for j = low:high-1
        if arr(j) <= pivot
            i = i + 1;
            temp = arr(i);
            arr(i) = arr(j);
            arr(j) = temp;
        end
    end

    temp = arr(i + 1);
    arr(i + 1) = arr(high);
    arr(high) = temp;

    pivotIndex = i + 1;
end