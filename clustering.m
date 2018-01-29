function [acc, C] = clustering(A, B, k)
%CLUSTERING Clusters rows of A into k clusters and assings labels according
%to the most occuring label according to the given matrix B
C = kmeans(A, k);
labels = zeros(1,k);
for i=1:k
    [~, labels(i)] = max(sum(B(C==i,:)));
end 
predicted = labels(C);
[~, actual] = max(B, [], 2);
C = confusionmat(predicted, actual);
acc = 100 * trace(C) / sum(sum(C));
end

