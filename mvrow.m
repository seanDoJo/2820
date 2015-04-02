function b = mvrow(n,A,x)
for j = 1:n
    b(j) = A(j,:) * x;
end
b = b';