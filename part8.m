z0 = 0;
zk = z0;
M = zeros(361,361);
for i = 1:361
    zk = z0;
    for j = 1:361
        c = -1.8 + i*0.01 + 1i*(-1.8 + 0.01*j)
        k = c;
        zk = z0;
        expr = strcat('z^2 ','+','(',num2str(k),')'); 
        phi = inline(expr);
        kcount = 0;
        while kcount < 255 & abs(zk) < 100
            kcount = kcount + 1;
            zk = phi(zk);
        end 
        if abs(zk) >= 100
            kcount = abs(log(kcount)/log(255));
            M(181 + round(imag(c)*100), 181 + round(real(c)*100)) = kcount;
        end
    end
end
imshow(M)

        
        