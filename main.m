clc
clear all
close all
k=15;
d=10;
A = csvread('data.txt');
B = csvread('label.txt');
[acc, conf_mat] = clustering(A, B, k);
fprintf('The accuracy in clustering is %f\n', acc);
fprintf('The associated confusion matrix is\n');
disp(conf_mat);
[coeff, score] = pca(A);
threshold = 0.1;
lo = 1;
hi = size(A,2);
while abs(lo - hi) > 1
    rs = round((lo + hi) / 2);
    recons = score(:,1:rs)*coeff(:,1:rs)' + mean(A,1);
    diff = recons - A;
    dists = sum(diff .^ 2, 2);
    error = mean(dists);
    if error > threshold
        lo = rs; 
    else
        hi = rs;
    end
end
fprintf('Projecting to %d dimensions which gives %f reconstruction error\n', ...
    rs, error);
[acc, conf_mat] = clustering(recons, B, k);
fprintf('The accuracy in clustering is %f\n', acc);
fprintf('The associated confusion matrix is\n');
disp(conf_mat);