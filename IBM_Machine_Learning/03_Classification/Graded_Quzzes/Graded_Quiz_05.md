## Graded Quiz 05: Ensemble Models & Bagging

---

### 1. Question 1

**The term Bagging stands for bootstrap aggregating.**

* **Correct Answer:** **True**
* **Explanation:** **Bagging** is an abbreviation for **B**ootstrap **Agg**regat**ing**. It involves generating multiple bootstrap samples (sampling with replacement) from the original dataset, training a separate base learner on each sample in parallel, and aggregating their predictions (via majority voting for classification or averaging for regression).



---

### 2. Question 2

**This is the best way to choose the number of trees to build on a Bagging ensemble.**

* **Correct Answer:** **Choose a number of trees past the point of diminishing returns**
* **Explanation:** Unlike boosting, adding more trees to a bagging ensemble does not cause overfitting—instead, the out-of-bag (OOB) error decreases and eventually stabilizes around a plateau. Therefore, rather than wasting compute tuning `n_estimators` via grid search or relying on biased training error, you simply select a number of trees large enough to pass the point of diminishing returns where error levels off.

---

### 3. Question 3

**Which type of Ensemble modeling approach is NOT a special case of model averaging?**

* **Correct Answer:** **Boosting methods**
* **Explanation:** Bagging, Pasting (bagging without replacement), and Random Forests all train independent models in parallel and combine their outputs through equal-weighted **model averaging** (or majority voting). **Boosting**, by contrast, builds models **sequentially**, where each new learner focuses on correcting the weighted errors or residuals of prior learners rather than simply averaging independent models.



---

### 4. Question 4

**What is an ensemble model that needs you to look at out of bag error?**

* **Correct Answer:** **Random Forest**
* **Explanation:** Because a **Random Forest** trains each decision tree on a bootstrap sample (which leaves out roughly $\frac{1}{e} \approx 36.8\%$ of the training instances), those left-out observations—called **out-of-bag (OOB)** samples—can be used as a built-in validation set to compute the **out-of-bag error** without needing a separate cross-validation split.



---

### 5. Question 5

**What is the main condition to use stacking as ensemble method?**

* **Correct Answer:** **Models need to output predicted probabilities**
* **Explanation:** In classification **Stacking** (Stacked Generalization), the meta-learner (level-1 model) combines the predictions from diverse base learners (level-0 models). Using **predicted class probabilities** (rather than hard class labels) gives the meta-learner richer confidence information across all classes so it can learn how to optimally weight each base model.

---

### 6. Question 6

**This tree ensemble method only uses a subset of the features for each tree:**

* **Correct Answer:** **Random Forest**
* **Explanation:** While standard Bagging considers all features when splitting nodes, **Random Forest** introduces extra randomness by selecting only a random subset of features (`max_features` / `mtry`) at each split (and across trees), which decorrelates the individual trees and further reduces variance.



---

### 7. Question 7

**Order these tree ensembles in order of most randomness to least randomness:**

* **Correct Answer:** **Random Trees, Random Forest, Bagging**
* **Explanation:**
1. **Random Trees (Extremely Randomized Trees / Extra-Trees):** Most randomness—uses random feature subsets *and* chooses split thresholds completely at random rather than searching for the optimal split.
2. **Random Forest:** Moderate randomness—uses bootstrap sampling *and* a random subset of features at each split, but searches for the optimal split threshold within that subset.


3. **Bagging:** Least randomness—uses bootstrap sampling of rows, but considers *all* features and chooses the optimal split threshold at every node.



---

### 8. Question 8

**This is an ensemble model that does not use bootstrapped samples to fit the base trees, takes residuals into account, and fits the base trees iteratively:**

* **Correct Answer:** **Boosting**
* **Explanation:** **Boosting** (specifically Gradient Boosting) fits base trees **iteratively (sequentially)** on the full dataset (rather than independent bootstrap samples), with each new tree trained directly on the **residuals** (errors) of the preceding ensemble.



---

### 9. Question 9

**When comparing the two ensemble methods Bagging and Boosting, what is one characteristic of Boosting?**

* **Correct Answer:** **Fits entire data set**
* **Explanation:** Unlike Bagging (which trains each learner on a random **bootstrapped sample** with equal/no sample weighting), **Boosting** trains each sequential learner on the **entire dataset** while dynamically adjusting weights or residuals so subsequent learners focus on misclassified points.



---

### 10. Question 10

**What is the most frequently discussed loss function in boosting algorithms?**

* **Correct Answer:** **0-1 Loss Function**
* **Explanation:** In theoretical discussions of classification boosting (such as AdaBoost), the **0-1 Loss Function** (which assigns a loss of $0$ for a correct prediction and $1$ for an incorrect prediction) is the foundational benchmark loss that boosting algorithms approximate using smooth, differentiable surrogate loss functions (like exponential loss or log-loss).

---

### Answer Key Summary

| Question | Correct Answer |
| --- | --- |
| **Question 1** | **True** |
| **Question 2** | **Choose a number of trees past the point of diminishing returns** |
| **Question 3** | **Boosting methods** |
| **Question 4** | **Random Forest** |
| **Question 5** | **Models need to output predicted probabilities** |
| **Question 6** | **Random Forest** |
| **Question 7** | **Random Trees, Random Forest, Bagging** |
| **Question 8** | **Boosting** |
| **Question 9** | **Fits entire data set** |
| **Question 10** | **0-1 Loss Function** |
