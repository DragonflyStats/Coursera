Facets
========================
In addition to mapping variables to different aesthetics, you can also opt to use facets to help make sense of your data visually. Rather than plotting all the data on a single plot and visually altering the point size or color of a third variable in a scatterplot, you could break each level of that third variable out into a separate subplot. To do this, you would use faceting. Faceting is particularly helpful for looking at categorical variables.

To use faceting, you would add an additional layer (+) to your code and use the facet_wrap() function. Within facet wrap, you specify the variable by which you want your subplots to be made:

<pre><code>
ggplot(data = diamonds) + 
  geom_point(mapping = aes(x = carat, y = price)) + 
  # facet by clarity
  facet_wrap(~clarity, nrow = 2)
</code></pre>

Here, read the tilde as the word "by". Specifically here, we want a scatterplot of the relationship between carat and price and we want it faceted (broken down) by (~) clarity.


Figure: facet_wrap breaks plots down into subplots

Now, we have eight different plots, one for each level of clarity, where we can see the relationship between diamond carats and price.

You'll note here we've opted to specify that we want 2 rows of subplots (nrow = 2). You can play around with the number of rows you want in your output to customize how your output plot appears.


