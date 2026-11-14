## Graded Quiz 04 - Decision Trees

---

### 1. Question 1

**These are all characteristics of decision trees, EXCEPT:**

* **Correct Answer:** **They have well rounded decision boundaries**
* **Explanation:** Decision trees partition feature space using orthogonal, axis-aligned thresholds (e.g., $x_1 > 5$), which produce **rectangular, step-like (boxy) decision boundaries**—not smooth or well-rounded boundaries.

---

### 2. Question 2

**How are leaf values calculated for regression decision trees?**

* **Correct Answer:** **average value of the predicted variable**
* **Explanation:** While classification trees compute class proportions (ratios) in each leaf, regression trees predict continuous values by taking the **mean (average) value** of all training target observations that fall into that leaf node (minimizing Mean Squared Error).

---

### 3. Question 3

**These are two main advantages of decision trees:**

* **Correct Answer:** **They are very visual and easy to interpret**
* **Explanation:** Decision trees mirror human "if-then" decision-making rules and can be plotted directly as a flowchart, making them highly visual and easy for non-technical stakeholders to interpret without requiring feature scaling.

---

### 4. Question 4

**How can you determine the split for each node of a decision tree?**

* **Correct Answer:** **Find the split that minimizes the gini impurity.**
* **Explanation:** At each internal node, classification trees evaluate candidate feature splits and choose the split that **minimizes Gini impurity** (or maximizes Information Gain / minimizes entropy) so the resulting child nodes are as pure as possible.

---

### 5. Question 5

**Which of the following describes a way to regularize a decision tree to address overfitting?**

* **Correct Answer:** **Decrease the max depth.**
* **Explanation:** Unconstrained decision trees grow deep enough to memorize training noise (overfitting). **Decreasing `max_depth**` (pre-pruning) limits how many sequential splits the tree can make, regularizing the model and improving generalization.

---

### 6. Question 6

**What is a disadvantage of decision trees?**

* **Correct Answer:** **They tend to overfit.**
* **Explanation:** Single unpruned decision trees have high variance—they readily memorize idiosyncrasies in the training set (**tend to overfit**) and are sensitive to small changes in the training data, which is why ensemble methods like Random Forests are often used instead.

---

### 7. Question 7

**What method can you use to minimize overfitting of a machine learning model?**

* **Correct Answer:** **Tune the hyperparameters of your model using cross-validation.**
* **Explanation:** Using **cross-validation to tune regularization/complexity hyperparameters** (such as `max_depth`, `min_samples_leaf`, or regularization penalty $\alpha$) evaluates out-of-fold generalization performance, preventing the model from overfitting the training set.

---

### 8. Question 8

**Concerning Classification algorithms, what is a characteristic of K-Nearest Neighbors?**

* **Correct Answer:** **Training data is the model**
* **Explanation:** K-Nearest Neighbors (KNN) is a non-parametric, lazy learning algorithm: it does not learn compressed parametric weights during training. Instead, it stores the entire dataset in memory (**training data is the model**), making fitting instantaneous and prediction computationally slower.

---

### 9. Question 9

**Concerning Classification algorithms, what are the characteristics of Logistic Regression?**

* **Correct Answer:** **The model is just parameters, fitting can be slow, prediction is fast, and the decision boundary is simple and less flexible**
* **Explanation:** Logistic Regression is a parametric linear classifier—once trained, **the model consists solely of learned weights/parameters** (no need to store training rows), making **prediction very fast**, though iterative optimization during **fitting can be slow** on large datasets, and its linear hyperplane produces a **simple, less flexible decision boundary**.

---

### 10. Question 10

**When evaluating all possible splits of a decision tree what can be used to find the best split regardless of what happened in prior or future steps?**

* **Correct Answer:** **Greedy Search**
* **Explanation:** Because finding the globally optimal decision tree is NP-complete, tree algorithms (such as CART and ID3) use a top-down **Greedy Search**—selecting the single locally optimal split at the current node without backtracking or looking ahead at future splits.

---

### Answer Key Summary

| Question | Correct Answer |
| --- | --- |
| **Question 1** | **They have well rounded decision boundaries** |
| **Question 2** | **average value of the predicted variable** |
| **Question 3** | **They are very visual and easy to interpret** |
| **Question 4** | **Find the split that minimizes the gini impurity.** |
| **Question 5** | **Decrease the max depth.** |
| **Question 6** | **They tend to overfit.** |
| **Question 7** | **Tune the hyperparameters of your model using cross-validation.** |
| **Question 8** | **Training data is the model** |
| **Question 9** | **The model is just parameters, fitting can be slow, prediction is fast, and the decision boundary is simple and less flexible** |
| **Question 10** | **Greedy Search** |
