function [V] = skew(v)
    % [V] = skew(v)
    %
    % Function generates the Skew-symmetric matrix of a given 
    % 3x1 vector.
    % input:
    % v - 3 x 1 vector
    % output:
    % V - the Skew-symmetric matrix of vector v
    v = v(:);   % to ensure column vector
    if 3 ~= size(v, 1)
        error('matlab-utils/skew.m', 'input vector must be 3x1');
    end
    V = zeros(3, 3);
    V(1,2) = -v(3);
    V(1,3) =  v(2);
    V(2,3) = -v(1);
    V(2,1) =  v(3);
    V(3,1) = -v(2);
    V(3,2) =  v(1);
end
