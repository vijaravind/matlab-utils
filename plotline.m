function [h] = plotline(xvec, yvec, colour, lw)
    % [h] = plotline(xvec, yvec, colour, lw)
    %
    % Function to plot a line. This function lets the user specify the
    % colour and linewidth which are not possible using Matlab's default
    % line() function.
    % @input :
    % xvec - x vector
    % yvec - y vector
    % colour - colour char
    % lw - line width value
    % @output :
    % h - handle of the line object
    %

    % set colour and linewidth values to some default when not specified
    % by the user
    if nargin < 3 
        colour = 'b';
    end
    if nargin < 4
        lw = 1.2;
    end
    h = plot(xvec, yvec, colour, 'LineWidth', lw);
end
