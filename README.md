# Decimal Comma
A simple function to replace decimal points with decimal commas (which are usual in Europe) in Matlab or Octave plots.

## Usage
The function has to be called after displaying a graph (see [PLOT][1] for details). It accepts two sets of arguments:

 * Change decimal point to decimal comma in a plot (use gca for current axes handle and one of 'X', 'Y' or 'XY' for axis_name):

        decimal_comma(axis_handle, axis_name)

 * Change decimal point to decimal comma in a plot with specified number format (see [SPRINTF][1] for details):

        decimal_comma(axis_handle, axis_name, formatstr)

## Example code
    x = -1:0.1:1;
    y = x.^3;
    plot(x, y);
    decimal_comma(gca, 'XY');

## More information
The function was written in 2012 by Adam Heinrich. More information can be found in accompanying blog post (http://adamheinrich.com/blog/2012/decimal-comma-in-matlab-plots/).

[1]: http://www.mathworks.com/help/matlab/ref/plot.html
[2]: http://www.mathworks.com/help/matlab/ref/sprintf.html
