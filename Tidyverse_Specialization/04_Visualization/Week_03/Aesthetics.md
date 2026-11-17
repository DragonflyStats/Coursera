Aesthetics
What if we wanted to alter the size, color or shape of the points? Probably unsurprisingly, these can all be changed within the aesthetics argument. After all, something's aesthetic refers to how something looks. Thus, if you want to change the look of your graph, you'll want to play around with the plot's aesthetics.

In fact, in the plots above you'll notice that we specified what should be on the x and y axis within the aes() call. These are aesthetic mappings too! We were telling ggplot2 what to put on each axis, which will clearly affect how the plot looks, so it makes sense that these calls have to occur within aes(). Additionally now, we'll focus on arguments within aes() that change how the points on the plot look.

Point color
In the scatterplot we just generated, we saw that there was a relationship between carat and price, such that the more carats a diamond has, generally, the higher the price. But, it's not a perfectly linear trend. What we mean by that is that not all diamonds that were 2 carats were exactly the same price. And, not all 3 carat diamonds were exactly the same price. What if we were interested in finding out a little bit more about why this is the case?

Well, we could look at the clarity of the diamonds to see whether or not that affects the price of the diamonds? To add clarity to our plot, we could change the color of our points to differ based on clarity:

123
# adjusting color within aes
ggplot(data = diamonds) + 
  geom_point(mapping = aes(x = carat, y = price, color = clarity))


Figure: changing point colors helps us better understand the data

Here, we see that not only are the points now colored by clarity, ggplot2 has also automatically added a legend for us with the various classes and their corresponding point color.

The Help pages of the diamonds dataset (accessed using ?diamonds) state that clarity is "a measurement of how clear the diamond is." The documentation also tells us that I1 is the worst clarity and IF is the best (Full scale: I1, SI1, SI2, VS1, VS2, VVS1, VVS2, IF). This makes sense with what we see in the plot. Small (<1 carat) diamonds that have the best clarity level (IF) are some of the most expensive diamonds. While, relatively large diamonds (diamonds between 2 and 3 carats) of the lowest clarity (I1) tend to cost less.

By coloring our points by a different variable in the dataset, we now understand our dataset better. This is one of the goals of data visualization! And, specifically, what we're doing here in ggplot2 is known as mapping a variable to an aesthetic. We took another variable in the dataset, mapped it to a color, and then put those colors on the points in the plot. Well, we only told ggplot2 what variable to map. It took care of the rest!

Of course, we can also manually specify the colors of the points on our graph; however, manually specifying the colors of points happens outside of the aes() call. This is because ggplot2 does not have to go through the mapping the variable to an aesthetic process. In the code here, ggplot2 doesn't have to go through the trouble of figuring out which level of the variable is going to be which color on the plot (the mapping to the aesthetic part of the process). Instead, it just colors every point red. Thus, manually specifying the color of your points happens outside of aes():

123
# manually control color point outside aes
ggplot(data = diamonds) + 
  geom_point(mapping = aes(x = carat, y = price), color = "red") 



Figure: manually specifying point color occurs outside of aes()

Point size
As above, we can change the point size by mapping another variable to the size argument within aes:

123
# adjust point size within aes
ggplot(data = diamonds) + 
  geom_point(mapping = aes(x = carat, y = price, size = clarity))


Figure: mapping to size changes point size on plot

As above, ggplot2 handles the mapping process. All you have to do is specify what variable you want mapped (clarity) and how you want ggplot2 to handle the mapping (change the point size). With this code, you do get a warning when you run it in R that using a "discrete variable is not advised." This is because mapping to size is usually done for numeric variables, rather than categorical variables like clarity.

This makes sense here too. The relationship between clarity, carat, and price was easier to visualize when clarity was mapped to color than here where it is mapped to size.

Like the above example with color, the size of every point can be changed by calling size outside of aes:

123
# global control of point size
ggplot(data = diamonds) + 
  geom_point(mapping = aes(x = carat, y = price), size = 4.5)



Figure: manually specifying point size of all points occurs outside of aes()

Here, we have manually increased the size of all the points on the plot.

Point Shape
You can also change the shape of the points (shape). We've used solid, filled circles thus far (the default in geom_point), but we could specify a different shape for each clarity.

12345678
# map clarity to point shape within aes 
ggplot(data = diamonds) + 
  geom_point(mapping = aes(x = carat, y = price, shape = clarity))
## Warning: Using shapes for an ordinal variable is not advised
## Warning: The shape palette can deal with a maximum of 6 discrete values because
## more than 6 becomes difficult to discriminate; you have 8. Consider
## specifying shapes manually if you must have them.
## Warning: Removed 5445 rows containing missing values (geom_point).



Figure: mapping clarity to shape

Here, while the mapping occurs correctly within ggplot2, we do get a warning message that discriminating more than six different shapes is difficult for the human eye. Thus, ggplot2 won't allow more than six different shapes on a plot. This suggests that while you can do something, it's not always the best to do that thing. Here, with more than six levels of clarity, it's best to stick to mapping this variable to color as we did initially.

To manually specify a shape for all the points on your plot, you would specify it outside of aes using one of the twenty-five different shape options available:


Figure: options for points in ggplot2's shape

For example, to plot all of the points on the plot as filled diamonds (it is a dataset about diamonds after all.), you would specify shape '18':

123
# global control of point shape outside aes
ggplot(data = diamonds) + 
  geom_point(mapping = aes(x = carat, y = price), shape = 18)



Figure: specifying filled diamonds as shape for all points manually