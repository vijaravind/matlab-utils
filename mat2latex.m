function [s] = mat2latex(a)
    % [s] = mat2latex(a)
    %
    % Function converts a numerical Matlab matrix into its LaTeX 
    % counterpart and prints that matrix. 
    % input:
    % a - numerical matrix
    % output:
    % s - matrix in LaTex format (string)
    fmt = '%g';
    [nr,nc] = size(a);
    row = [fmt, ' ', repmat(['& ', fmt, ' '], 1, nc-1)];
    m = [repmat([row, '\\\\ \n'], 1, nr-1), [row, '\n']];
    ac = num2cell(reshape(a',1,[]));
    s = sprintf(m,ac{:});
end
