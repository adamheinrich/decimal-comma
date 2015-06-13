function [ output_args ] = decimal_comma( axis_handle, axis_name, varargin )
%DECIMAL_COMMA changes decimal point to comma in a plot
%   DECIMAL_COMMA(axis_handle, axis_name) changes decimal point to decimal
%   comma in a plot. Use gca for current axes handle and one of 'X', 'Y' or
%   'XY' for axis_name.
%
%   DECIMAL_COMMA(axis_handle, axis_name, formatstr) changes decimal point 
%   to decimal comma in a plot. Number format is specified by formatstr 
%   (see SPRINTF for details).   
    if nargin < 2 || nargin > 3
        error('Wrong number of input parameters.');
    end;

    switch axis_name
        case 'XY'
            decimal_comma(axis_handle, 'X', varargin{:});
            decimal_comma(axis_handle, 'Y', varargin{:});
        case {'X', 'Y'}
            tick = get(axis_handle, strcat(axis_name, 'Tick'));
           
            label = '';
            for i = 1:length(tick)
                label = [label num2str(tick(i), varargin{:}) '|'];
            end
            
            label = strrep(label, '.', ','); 
            set(axis_handle,  strcat(axis_name, 'TickLabel'), label);
        otherwise
            error('Wrong axis name! Use one of X, Y or XY.');
    end;
end