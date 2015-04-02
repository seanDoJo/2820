function x = backcol(U,b)
[m,n] = size(U);
for j = n:-1:2
    x(j) = b(j)/U(j,j);
    b = b - x(j)*U(:,j);
end
x(1) = b(1)/U(1,1);
x = x';