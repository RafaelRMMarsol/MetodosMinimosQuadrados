clear
y=[4.00 4.25 4.49 5.21 5.47 5.46 5.50]';
x=[1 2 3 4 5 6 7]';
n=size(x,1);

p=2;
for i=1:p+1
    for j=1:p+1
        M(i,j)=sum(x.^(i+j-2))
    end
end

for i=1:p+1
    b(i)=sum(y.*x.^(i-1))
end

a=inv(M)*b;

XX     =0:0.1:10;
YY     =0
residuo=0
for i=1:p+1
    YY=YY+a(i)*XX.^(i-1);
    residuo=residuo+a(i)*x.^(i-1);
end
residuo=residuo-y;

plot(XX, YY, 'b')
plot(x,y,'r*');xgrid
