clear all

moduleLis = importdata('modules.txt');

moduleLis(:,2) = floor(moduleLis(:,1)/3)-2;
sum(moduleLis(:,2))

n=1;
a=sum(moduleLis(:,n+1));
b=sum(moduleLis(:,n));
c=b-a;

while c>0
    moduleLis(:,n+2) = floor(moduleLis(:,n+1)/3)-2;
    moduleLis(moduleLis<0) = 0;
    c=sum(moduleLis(:,n));-sum(moduleLis(:,n+1));
    n=n+1;
end

sum(sum(moduleLis(:,2:n)))
