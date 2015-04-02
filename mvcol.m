function b = mvcol(n, A, x)
for j = 1:n
    b(j) = 0;
end
b = b';
for j = 1:n
    b = b + A(:,j) * x(j);
end