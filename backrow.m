function x = backrow(U, b)
[m, n] = size(U);
for k = n:-1:1
    tmp = 0;
    for j = k+1:n
        tmp = tmp + U(k,j) * x(j);
    end
    x(k) = (b(k) - tmp)/U(k,k);
end