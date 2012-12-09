function [] = mat2latex(a)
    % This function converts a numerical Matlab matrix into its LaTeX 
    % counterpart and prints that matrix. 
    % input:
    % a - numerical matrix
    nrows = size(a, 1);
    ncols = size(a, 2);
    for i = 1:nrows
        for j = 1:ncols
            val = a(i,j);
            if abs(val) < 1e-10
                val = 0;
            end
            if j == ncols
                if i == nrows
                    fprintf(1, ' %s', num2str(val, 4));
                else
                    fprintf(1, ' %s \\\\', num2str(val, 4));
                end
            else
                fprintf(1, ' %s &', num2str(val, 4));
            end
        end
        if ncols > 1
            fprintf(1, '\n');
        end
    end
    fprintf(1, '\n');
end

