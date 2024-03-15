%selectionsort
% Seletion sort
function c= selection_sort(inputArray)
    c=0;
    % Get the length of the input array
    n = length(inputArray);
    
    % Iterate through the array
    for i = 1:n-1
        c=c+1;
        % Assume the current index is the minimum
        minIndex = i;
        
        % Check the rest of the array for a smaller element
        for j = i+1:n
            c=c+1;
            if inputArray(j) < inputArray(minIndex)
                minIndex = j;
                
                
            end
        end

        % Swap the found minimum element with the first element
        temp = inputArray(i);
        inputArray(i) = inputArray(minIndex);
        inputArray(minIndex) = temp;
        c=c+1;
    end
    
    % The array is now sorted
    sortedArray = inputArray;
end
