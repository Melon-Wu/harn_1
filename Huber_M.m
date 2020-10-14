function [w]=Huber_M(P,U,c)
[n,m]=size(P);
for i=1:m
    if norm((P(:,i)-U*U'*P(:,i)),2)<=c
        w(i)=1;
    else
        w(i)=c/norm((P(:,i)-U*U'*P(:,i)),2);
    end
end