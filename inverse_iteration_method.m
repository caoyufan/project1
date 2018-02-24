phi = inline('z^2');
colormap([1 0 0; 1 1 1]);
M = 2*ones(250,250);
phi_inverse = inline('z^0.5' );
for j = 1:250
    j 
    y = -1.25 + (j-1)*0.01;
    for i = 1:250
        x = -1.25 + (i-1)*0.01;
        z = x + 1i*y;
        zk = z; 
        for i = 1:100
            zk = phi_inverse(zk);
            a = round(rand());
            if a == 0
                zk = -zk;
            end
        end
        M(126 + (round (real(zk)*100)), 126 + (round(imag(zk)*100))) = 1;
    end
end
image ([-1.25 1.25], [-1.25 1.25 ], M)
axis xy
            
            
    