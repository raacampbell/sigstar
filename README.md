# sigstar

Lines and asterisks indicating significant differences between two groups on a plot are commonly used in the life and social sciences. 
To my knowledge, no MATLAB function for adding these is openly available.
`sigstar` makes it easy to add lines and significance asterisks joing one or more pairs of groups on bar charts, box plots, and even line plots. The user simply supplies the identities of the two groups and the p-value 
(which the user has calculated using an appropriate test). 

##Usage
Group identity is defined as x-axis locations or, optionally, group names (if the x-axis labels are strings). 
`sigstar` converts the supplied p-values to the appropriate number of asterisks and plots these over the lines that link the pair of groups.
sigstar attempts to intelligently place lines and asterisks so that they do not overlie existing plot elements. 
By default, bars with longer horizontal extents are plotted above shorter bars. 
This is the convention and it looks neater. 
The user has control over the order in which significance bars are added. 
Modifying the order provides control over the vertical position of the bars. 
This is important for obtaining a neat result in a cluttered plot.

## More
See examples in "`help sigstar`" for details.
The handles of the added plot elements are returned by default, providing the user with fine control of the plot's appearance. See demo_sigstar for examples of advanced customisations.
The function should produce publication quality results, but you may need to play with the figure size and asterisk font size.
