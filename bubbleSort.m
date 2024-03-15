%bubblesort
function c1 = bubbleSort(inputArray)
    c1=0;
    % Get the length of the input array
    n = length(inputArray);
    
    % Iterate through the array
    for i = 1:n-1
        % Last i elements are already sorted, so no need to check them
        for j = 1:n-i
            c1 = c1 +1;
            % Swap if the element found is greater than the next element
            if inputArray(j) > inputArray(j+1)
                temp = inputArray(j);
                inputArray(j) = inputArray(j+1);
                inputArray(j+1) = temp;
                
            end
        end
    end
    
    % The array is now sorted
    sortedArray = inputArray;
   
end
