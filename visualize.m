function [] = visualize(eigvec)
%VISUALIZE Summary of this function goes here
%   Detailed explanation goes here
pos = max(eigvec,0);
neg = -min(eigvec,0);
pos = pos / max(pos);
neg = neg / max(neg);
im = zeros(20,20,3);
empty = reshape((pos>0) .* (neg>0), [20,20]);
imshow(empty);
im(:,:,1)=reshape(neg, [20,20]);
im(:,:,2)=reshape(pos,[20,20]);
imshow(im);
end

