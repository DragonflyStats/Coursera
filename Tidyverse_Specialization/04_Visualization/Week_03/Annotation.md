Annotation
Finally, there will be times when you'll want to add text to a plot or to annotate points on your plot. We'll discuss briefly how to accomplish that here!

To add text to your plot, we can use the function annotate. This requires us to specify that we want to annotate here with "text" (rather than say a shape, like a rectangle - "rect" - which you can also do!).  Additionally, we have to specify what we'd like that text to say (using the label argument), where on the plot we'd like that text to show up (using x and y for coordinates), how we'd like the text aligned (using hjust for horizontal alignment where the options are "left", "center", or "right" and vjust for vertical alignment where the arguments are "top", "center", or "bottom"), and how big we'd like that text to be (using size):

12345678910111213141516171819
ggplot(diamonds) + 
  geom_bar(aes(x = clarity)) +
  scale_y_continuous(breaks = seq(0, 17000, by = 1000)) +
  scale_x_discrete(limit = c("SI2", "SI1", "I1")) +
  coord_flip() +
  labs(title = "Number of diamonds by diamond clarity",
       subtitle = "Subset of all diamonds, looking three levels of clarity") +
  theme_classic() +
  theme(title = element_text(size = 18), 
        axis.text = element_text(size = 14),





Figure: annotate helps add text to our plot

Note: we could have accomplished this by adding an additional geom: geom_text. However, this requires creating a new dataframe, as explained here. This can also be used to label the points on your plot. Keep this reference in mind in case you have to do that in the future.