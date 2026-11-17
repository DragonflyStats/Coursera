
-----------------------------
#### Question 1
If you had three plots (p1, p2, and p3) and used the code p1 + p2 + p3, how many columns would the resulting plot have?

* ***Correct*** 3
* 0
* 2
* 1


-----------------------------
#### Question 2
Which of these would NOT get you four plots of equal size with two on top and two on bottom?

1 / 1 point

* ***Correct*** p1 + p2 + (p3 + p4) 
* p1 + p2 + plot_layout(ncol = 2) + p3 + p4
* (p1 + p2) + p3 + p4 + plot_layout(ncol = 2)
* p1 + p2 + p3 + p4 + plot_layout(ncol = 2)

Correct
3.
-----------------------------
#### Question 3
How many plots would have the default ggplot2 theme theme_gray() with this code: 
<pre><code>
((p1 + p2 + p3) + plot_layout(ncol = 1)) * theme_bw() + p4 ?
</code></pre>

* 0
* 1
* 3
* ***Incorrect*** 2


-----------------------------
#### Question 4
To create an animated plot, which package would you use?

* plot
* ggplot
* **Correct** gganimate


-----------------------------
#### Question 5
To add labels that don't overlap what function might you use?

* **Correct** geom_text_repel()
* text_repel()
* geom_text_not_overlap()
* repel_text()

