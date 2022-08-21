a=imread('Pictures/10.jpg')
[n1  n2  n3] = size(a)
n1*n2*n3
tic
meanr=mean(mean(a(:,:,1)));
meang=mean(mean(a(:,:,2)));
meanb=mean(mean(a(:,:,3)));
stdr=std(std(double(a(:,:,1))));
stdg=std(std(double(a(:,:,2))));
stdb=std(std(double(a(:,:,3))));
toc
features(1,1)=meanr;
features(2,1)=meang;
features(3,1)=meanb;
features(4,1)=stdr;
features(5,1)=stdg;
features(6,1)=stdb;
features


subplot(2,2,1)
imshow(a)
title 'colorimage'
subplot(2,2,2)
imhist(a(:,:,1))
title 'red histogram'
subplot(2,2,3)
imhist(a(:,:,2))
title 'green histogram'
subplot(2,2,4)
imhist(a(:,:,3))
title 'blue histogram'