function decimal_comma(axis_handle, axis_name, varargin)
%DECIMAL_COMMA - decimal comma in 2-D plot
%
%   A simple function to replace decimal points with decimal commas (which
%   are usual in Europe) in Matlab or Octave plots.
%
%   DECIMAL_COMMA(axis_handle, axis_name) changes decimal point to decimal
%   comma in a plot. Use gca for current axes handle and one of 'X', 'Y' or
%   'XY' for axis_name.
%
%   DECIMAL_COMMA(axis_handle, axis_name, formatstr) changes decimal point 
%   to decimal comma in a plot. Number format is specified by formatstr 
%   (see SPRINTF for details).   

% (c) 2012 Adam Heinrich <adam@adamh.cz>. Published under the MIT license.

    if (nargin < 2 || nargin > 3)
        error('Wrong number of input parameters.');
    end

    switch axis_name
        case 'XY'
            decimal_comma(axis_handle, 'X', varargin{:});
            decimal_comma(axis_handle, 'Y', varargin{:});
            
        case {'X', 'Y'}
            tick = get(axis_handle, strcat(axis_name, 'Tick'));
            
            n = length(tick);
            labels = cell(1,n);
            for i = 1:n
                label = num2str(tick(i), varargin{:});
                labels{i} = strrep(label, '.', ',');
            end

            set(axis_handle, strcat(axis_name, 'TickLabel'), labels);
            
        otherwise
            error('Wrong axis name! Use one of X, Y or XY.');
    end
end