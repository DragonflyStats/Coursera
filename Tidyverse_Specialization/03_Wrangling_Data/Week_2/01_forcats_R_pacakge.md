## The {forcats} R package

### Manually Changing the Labels of Factor Levels: `fct_relevel()`

What if you wanted your months to start with July first? That can be accomplished using `fct_relevel()`. 
To use this function, you simply need to state what you'd like to relevel (`mon`) followed by the levels you want to relevel. 
If you want these to be placed in the beginning, the `after` argument should be `after = 0`. 
You can play around with this setting to see how changing `after` affects the levels in your output.

```r
mon_relevel <- fct_relevel(mon, "Jul", "Aug", "Sep", "Oct", "Nov", "Dec", after = 0)

# releveled
mon_relevel
## [1] Mar Dec Jan Apr Jul
## Levels: Jul Aug Sep Oct Nov Dec Jan Feb Mar Apr May Jun

# releveled and sorted
sort(mon_relevel)
## [1] Jul Dec Jan Mar Apr
```

*Figure: `fct_relevel()` enables you to change the order of your factor levels*

After re-leveling, when we sort this factor, we see that Jul is placed first, as specified by the level re-ordering.

### Keeping the Order of the Factor Levels: `fct_inorder()`

Now, if you're not interested in the months being in calendar year order, you can always state that you want the levels to stay in the same order as the data you started with. You simply specify this with `fct_inorder()`.

```r
# keep order of appearance
mon_inorder <- fct_inorder(some_months)

# output
mon_inorder
## [1] Mar Dec Jan Apr Jul
## Levels: Mar Dec Jan Apr Jul
# sorted 
sort(mon_inorder)
## [1] Mar Dec Jan Apr Jul
```

*Figure: `fct_inorder()` assigns levels in the same order the level is seen in the data*

We see now with `fct_inorder()` that even when we sort the output, it does not sort the factor alphabetically, nor does it put it in calendar order. In fact, it stays in the same order as the input, just as we specified.

