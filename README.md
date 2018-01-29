# README

## File Description

- `main.m` Reads data and labels, performs k-means clustering, does pca on that and does k-means clustering again.
- `main2.m` Reads data, does pca, visualizes top 10 eigenvectors.
- `visualize.m` Converts a $1\times400$  vector to $20\times20$ image, takes positive values to green channel, negative values to red channel and other values are taken to be zero. Therefore positive regions appear as green and negative regions as red and empty regions as black.
- `clustering.m` Performs k-means, assigns labels based on maximum frequency within the cluster, finds accuracy and confusion matrix.

## Running Instructions

- Run `main.m` after changine $k$ (number of clusters, line 4) and $d$ (number of labels/digits, line 5), threshold (on reconstruction error, line 13).
- Run `main2.m` to get top 10 eigenvector visualizations.