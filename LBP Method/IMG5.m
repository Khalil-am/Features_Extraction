a=imread(['Pictures/5.jpg'])
[n1 n2 n3]=size(a)
b=reshape(a,1,n1*n2*n3);
tic
f=zeros(4,1);
for i=3:n1*n2*n3-3
c0=b(1,i-1)<=b(1,i+1);
c1=b(1,i-2)<=b(1,i+2);
index=c0+2*c1;
f(index+1,1)=f(index+1,1)+1;
end
toc
f