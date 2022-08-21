a=imread('Pictures/1.jpg');
[c1 c2 c3]=size(a);
c1*c2*c3
[h1 n]=imhist(a(:,:,1));
[h2 n]=imhist(a(:,:,2));
[h3 n]=imhist(a(:,:,3));
h=h1+h2+h3;
h=h';
tic
[w10,w11] = dwt (h,'db1');
[w20,w21] = dwt (w10,'db1');
[w30,w31] = dwt (w20,'db1');
[w40,w41] = dwt (w30,'db1');
[w50,w41] = dwt (w40,'db1');
[w60,w41] = dwt (w50,'db1');
tt2=toc;
exttime=tt2
tp=ss/exttime;
w60
plot(w60)