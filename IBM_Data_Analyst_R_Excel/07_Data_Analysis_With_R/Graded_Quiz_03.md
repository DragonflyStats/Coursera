### **Question 1**

**Which of the following forms of exploratory data analysis generates short summaries about the sample and measures of the data?**

* **Correct Answer:** **Descriptive statistics**
* **Explanation:** Descriptive statistics summarize and organize characteristics of a dataset (such as mean, median, standard deviation, counts, and quartiles, typically generated via Pandas `.describe()`).



---

### **Question 2**

**When conducting exploratory data analysis, which visualizations are particularly useful for plotting the target variable over multiple variables to get visual clues of the relationship between these variables and the target.**

* **Correct Answer:** **Heatmaps**
* **Explanation:** Heatmaps (such as correlation matrices or pseudocolor pivot plots) represent values across two dimensions using color intensity, allowing you to quickly spot patterns and relationships between a target variable and multiple predictors simultaneously.



---

### **Question 3**

**Which of the following statements about the ANOVA F-test score are true? Select two answers.**

* **Correct Answers:**
* **A large F-test score implies a strong correlation between variable categories and the target variable.**
* **A small F-test score implies a poor correlation between variable categories and the target variable.**


* **Explanation:** The ANOVA F-test compares the variance between group means to the variance within groups. A large F-score indicates substantial differences between category group means (strong relationship with the target), whereas a small F-score indicates little difference across groups (weak/poor relationship).

---

### **Question 4**

**You can visualize the correlation between two variables by plotting them on a scatter plot and then doing which of the following?**

* **Correct Answer:** **Add a regression line.**
* **Explanation:** Overlaying a fitted regression line (e.g., via `sns.regplot()`) on a scatter plot makes the direction (positive/negative) and strength of the linear relationship immediately clear.



---

### **Question 5**

**When using the Pearson method to evaluate the correlation between two variables, how do you know you can have strong certainty in the result?**

* **Correct Answer:** **The P value is less than 0.001.**
* **Explanation:** In the IBM Data Analysis with Python curriculum, $p < 0.001$ indicates strong certainty (statistical significance) in the computed Pearson correlation coefficient (whereas $p < 0.05$ indicates moderate certainty, $p < 0.1$ indicates weak certainty, and $p > 0.1$ indicates no certainty).

---

### **Quick Answer Key**

| Question | Correct Answer(s) |
| --- | --- |
| **Q1** | **Descriptive statistics** |
| **Q2** | **Heatmaps** |
| **Q3** | **A large F-test score implies a strong correlation between variable categories and the target variable.**<br>

<br>**A small F-test score implies a poor correlation between variable categories and the target variable.** |
| **Q4** | **Add a regression line.** |
| **Q5** | **The P value is less than 0.001.** |
