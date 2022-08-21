a=imread(['Pictures/3.jpg'])
[n1 n2 n3]=size(a)
tic
k=4;
x=reshape(a,n1*n3*n2,1);
[IDX,c,sumd]=kmeans(double(x),k);
toc
centroids=sort(c)
WCS=sort(sumd)