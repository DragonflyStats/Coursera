
### Question 1

To plot side by side bar plots, what position adjustment would you specify?


* <tt>position = "side-by-side"</t>>
* <tt>position = "fill"</tt>
* <tt>position = "repel"</tt>
* * **Correct** <tt>position = "dodge"</tt>

--------------------------------------

### Question 2

To plot stacked bar plots, what position adjustment would you specify?

* <tt>position = "ontop"</tt>
* <tt>position = "repel" </tt>
* **Correct** <tt>position = "stacked"</tt>

--------------------------------------

### Question 3

To switch your x-axis and put it on the y-axis and flip to put your y-axis on the x, what function would you use?


* <tt>filp_coord()</tt>
* <tt>flip_coordinates()</tt>
* * **Correct** <tt>coord_flip()</tt>
* <tt>swap_coord()</tt>

-------------------------------------

### Question 4

Which built in ggplot2 theme is the default theme in ggplot2?

* * **Correct** <tt>theme_gray()</tt>
* <tt>theme_linedraw()</tt>
* <tt>theme_light()</tt>
* <tt>theme_black()</tt>

-------------------------------------

### Question 5

To specify that you want the x-axis (but not the y-axis) text to be bold, what would you include within theme()?

* axis.text.x = element_text(font = "bold")
* * **Correct** axis.text.x = element_text(face = "bold")
* axis.text = element_text(font = "bold")
* axis.text = element_text(face = "bold")

-----------------------------------------

### Question 6
How would you remove a legend?

* theme(legend.position = element_blank())
* * **Correct** theme(legend.position = "none")
* theme(no_legend)
* theme(legend.position = null)

-----------------------------------------

### Question 7
To finalize your plot you may want to add a rectangular box onto your plot to hightlight a portion of the plot. What could you use?

* add_rect()
* add_text("text")
* element_text()
* * **Correct** annotate("rect")

-----------------------------------------
