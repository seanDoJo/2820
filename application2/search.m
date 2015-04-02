function search(A,q,t)
unitMatrix = normc(A);
qLength = norm(q);
[m, n] = size(A);
i = 1;

query = q
docMatrix = A
tolerance = t

for j = n:-1:1
    col = A(:,j);
    colLength = norm(col);
    product = dot(col,q);
    magProduct = colLength * qLength;
    cosDetermine = product/magProduct;
    
    if cosDetermine >= t
        X(i,1) = j;
        X(i,2) = cosDetermine;
        i = i + 1;
    end
end

sprintf('    Column  Cos(Angle)')
disp(X)
        
        
    
    