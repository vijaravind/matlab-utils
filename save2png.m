function [] = save2png(handle, filename)
    % This function is used to save a Matlab plot as a png file.
    % It makes use of Matlab's inbuilt hgexport() function.
    % Currently it saves as 640x480 image without any choice.
    % input:
    % handle - Matlab plot handle that needs to be saved as a png file
    % filename - name of the png file as a string
    % TODO: use varargin to get required image size and other options.
    options.Format = 'png';
    options.Width = 640; 
    options.Height = 480; 
    options.Units = 'pixels';
    hgexport(handle, filename, options);
end
