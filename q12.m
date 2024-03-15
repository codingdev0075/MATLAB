% mainfile.m
sizes = 50:10:200;
comparisons = zeros(size(sizes));

for i = 1:length(sizes)
    n = sizes(i);
    instance = randperm(1000, n);  % Random instance of size n

    k = 3;  % Find the 3rd largest element
    [~, comparisons(i)] = quickSelect(instance, k);
end

% Plotting
figure;
plot(sizes, comparisons, 'b-');
title('Performance Analysis of QuickSelect Algorithm');
xlabel('Instance Size');
ylabel('Number of Comparisons');
grid on;