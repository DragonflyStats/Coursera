
# Quiz Review

---

## **1. Question 1**  
If you had three plots (`p1`, `p2`, and `p3`) and used the code:

```
p1 + p2 + p3
```

How many columns would the resulting plot have?

**Correct answer:** **3**

---

## **2. Question 2**  
Which of these would **NOT** get you four plots of equal size with two on top and two on bottom?

- `p1 + p2 + (p3 + p4)`  
- `p1 + p2 + plot_layout(ncol = 2) + p3 + p4`  
- `(p1 + p2) + p3 + p4 + plot_layout(ncol = 2)`  
- `p1 + p2 + p3 + p4 + plot_layout(ncol = 2)`

**Correct answer:**  
`p1 + p2 + (p3 + p4)`

---

## **3. Question 3**  
How many plots would have the default ggplot2 theme `theme_gray()` with this code?

```r
((p1 + p2 + p3) + plot_layout(ncol = 1)) * theme_bw() + p4
```

**Correct answer:**  
**3** (your selection was incorrect)

---

## **4. Question 4**  
To create an animated plot, which package would you use?

**Correct answer:** **gganimate**

---

## **5. Question 5**  
To add labels that don't overlap, what function might you use?

**Correct answer:** **geom_text_repel()**

---

