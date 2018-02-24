function [ M ] = orbit(expr)
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here
phi = inline(expr);
colormap([1 0 0; 1 1 1]);
M = 2*ones(361,361)
kcount = 0;
z = 0;
zk = z;
y = 0;
while kcount<= 100 & y == 0
    kcount = kcount + 1;
    zk = phi(zk);
    M (181 + round(real(zk)*100),180 + round(imag(zk)*100)) = 1;
    if abs(zk) >= 100
        y = 5
    end
  
end
y
kcount
image([-1.8 1.8],[-1.8 1.8], M)
axis xy

end

