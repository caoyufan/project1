phi = inline('z^2');
fixpt1 = 1;
colormap([1 0 0; 1 1 1]);
M = 2*ones(250,250);
for j = 1:250
    y = -1.25 + (j-1)*0.01;
    for i = 1:250
        x = -1.25 + (i-1)*0.01;
        z = x + 1i*y;
        zk = z;
        iflag1 = 0;
        kount = 0;
        while kount < 100 & abs(zk) < 1 & iflag1 < 5 
            kount = kount + 1;
            zk = phi(zk);
            
            err1 = abs(zk - fixpt1);
            if err1 < 10^(-6)
                iflag1 = iflag1 + 1;
            else 
                iflag1 = 0;
            end
        end
        if iflag1 >= 5 | kount>=100
            M(j,i) = 1;
        end;
    end
end
image ([-1.25 1.25], [-1.25 1.25 ], M)
axis xy

            