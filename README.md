# Decimal Comma
A simple function to replace decimal points with decimal commas (which are usual in Europe) in Matlab or Octave plots.

## Usage
The function has to be called after displaying a graph (see [PLOT][1] for details). It accepts two sets of arguments:

    decimal_comma(axis_handle, axis_name)
    
Changes decimal point to decimal comma in a plot. Use gca for current axes handle and one of 'X', 'Y' or 'XY' for axis_name.

    decimal_comma(axis_handle, axis_name, formatstr)

Changes decimal point to decimal comma in a plot with specified number format (see [SPRINTF][1] for details).

## Example code
    x = -1:0.1:1;
    y = x.^3;
    plot(x, y);
    decimal_comma(gca, 'XY');

## More information
The function was written in 2012 by Adam Heinrich. More information can be found in accompanying blog post (http://adamheinrich.com/blog/2012/decimal-comma-in-matlab-plots/).

[1]: http://www.mathworks.com/help/matlab/ref/plot.html
[2]: http://www.mathworks.com/help/matlab/ref/sprintf.html
