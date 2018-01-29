clc
clear all
close all
A = csvread('data.txt');
[coeff,~,latent]=pca(A);
for i = 1:10
    figure
    visualize(coeff(:,i));
    saveas(gca, sprintf('results/coeff_%d.eps', i), 'epsc');
    fprintf('lambda_%d = %f\n', i, latent(i));
end