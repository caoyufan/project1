phi = inline('z - 0.5*(z + z^(-2))');
M = zeros(201,201);
a = -1;
b = exp(((pi)/3)*1i);
c = exp (((pi)/3)*1i);
for i = 1:201
    x= -1.01 + i*0.01;
    for j = 1:201
        y = -1.1 + j*0.01;
        z0 = x + y*1i;
        zk = z0;
        for k = 1:100
            zk  = phi(zk);
        end
        if abs(zk - a) < 10^(-6)
            M (j,i)= 0.7;
        end
        if abs(zk - b) < 10^(-6)
            M(j,i) = 0.5;
        end
        if abs(zk -c) < 10^(-6)
            M(j,i) = 0.2;
        end
        
            
    end
end
imshow(M)