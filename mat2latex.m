function [s] = mat2latex(a)
    fmt = '%g';
    [nr,nc] = size(a);
    row = [fmt, ' ', repmat(['& ', fmt, ' '], 1, nc-1)];
    m = [repmat([row, '\\\\ \n'], 1, nr-1), [row, '\n']];
    ac = num2cell(reshape(a',1,[]));
    % print values
    s = sprintf(m,ac{:});
end
