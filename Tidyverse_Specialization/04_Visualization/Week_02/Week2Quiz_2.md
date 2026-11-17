-----------------------------------------------------------------
#### Question 1
To plot side by side bar plots, what position adjustment would you specify?

* <tt>position = "repel" </tt>
* <tt>position = "side-by-side"</tt>
* <tt>position = "fill"</tt>
* **Correct** <tt>position = "dodge"</tt>

-----------------------------------------------------------------
#### Question 2
To plot stacked bar plots, what position adjustment would you specify?

* <tt>position = "ontop"</tt>
* **Correct** <tt>position = "stacked"</tt>
* <tt>position = "repel" </tt>

-----------------------------------------------------------------
#### Question 3
To switch your x-axis and put it on the y-axis and flip to put your y-axis on the x, what function would you use?

* <tt>flip_coordinates()</tt>
* **Correct** <tt>coord_flip()</tt>
* <tt>filp_coord()</tt>
* <tt> swap_coord()</tt>

-----------------------------------------------------------------
#### Question 4
Which built in ggplot2 theme is the default theme in ggplot2?

* <tt> theme_linedraw()</tt>
* <tt> theme_gray()</tt>
* <tt> theme_black()</tt>
* <tt> theme_light()</tt>

Incorrect
-----------------------------------------------------------------
#### Question 5
To specify that you want the x-axis (but not the y-axis) text to be bold, what would you include within theme()?



* <tt>axis.text = element_text(face = "bold")</tt>
* ***Incorrect*** <tt>axis.text.x = element_text(font = "bold")</tt>
* <tt>axis.text.x = element_text(face = "bold")</tt>
* <tt>axis.text = element_text(font = "bold")</tt>


-----------------------------------------------------------------
#### Question 6
How would you remove a legend?

* **Correct** <tt>theme(legend.position = "none")</tt>
* <tt>theme(legend.position = null)</tt>
* <tt>theme(no_legend)</tt>
* ***Incorrect*** <tt>theme(legend.position = element_blank())</tt>



-----------------------------------------------------------------
#### Question 7
To finalize your plot you may want to add a rectangular box onto your plot to hightlight a portion of the plot. What could you use?

* add_rect()
* add_text("text")
* element_text()
* **Correct** annotate("rect")

-----------------------------------------------------------------