Here are the correct answers and explanations for all 7 questions:

### **Question 1**

* **Correct Answer:** **K-nearest neighbors** *(or **Naïve Bayes** depending on the specific course bank—in this IBM course assessment, **K-nearest neighbors** is the intended answer).*
* **Explanation:** In retail customer segmentation/classification based on past purchasing behavior, K-nearest neighbors (KNN) groups and classifies new customers by comparing their purchase patterns directly to the closest historical customer profiles in feature space. *(Note: Decision trees were marked incorrect here because standard retail purchase data often lacks rigid, axis-aligned hierarchical rules without heavy tuning, whereas KNN directly measures similarity across purchase features).*

---

### **Question 2**

* **Correct Answer:** **Probability weighing** *(or **Majority vote** — since One-vs-One uses majority vote to get to a tie in the first place, **Probability weighing** is used to break the tie).*
* **Explanation:** In a One-vs-One (OvO) multiclass strategy, a binary classifier is trained for every pair of classes, and each classifier casts a vote. The class with the most votes wins via **majority vote**. However, when two or more classes receive the exact same number of votes (a tie), **probability weighing** (summing the predicted class probabilities or decision function confidence scores across classifiers) resolves the tie deterministically rather than guessing randomly.

---

### **Question 3**

* **Correct Answer:** **Information gain**
* **Explanation:** Information gain measures the reduction in entropy (impurity/randomness) achieved by splitting a dataset on a given feature. Decision trees evaluate candidate splits and choose the feature that maximizes information gain at each node.

---

### **Question 4**

* **Correct Answer:** **Mean squared error (MSE) method**
* **Explanation:** Unlike classification trees (which use Gini impurity or entropy/information gain), regression trees predict continuous numeric values. To evaluate split quality, they calculate the Mean Squared Error (MSE) of the resulting child nodes and select the split that minimizes total variance/MSE.

---

### **Question 5**

* **Correct Answer:** **Causes underfitting by generalizing too much**
* **Explanation:** In KNN, $k$ determines how many neighboring data points vote on a classification. A very small $k$ (e.g., $k=1$) captures local noise and causes overfitting. Increasing $k$ smooths out the decision boundary across a larger neighborhood; if $k$ becomes too large, the model ignores local patterns and over-generalizes, resulting in **underfitting**.

---

### **Question 6**

* **Correct Answer:** **A larger epsilon creates a wider margin where small errors are ignored.**
* **Explanation:** In Support Vector Regression (SVR), the hyperparameter epsilon ($\varepsilon$) defines the width of the "$\varepsilon$-insensitive tube" around the regression hyperplane. Any data point falling inside this margin has its error treated as zero (ignored), so increasing $\varepsilon$ widens the tolerance zone and marks fewer points as errors.

---

### **Question 7**

* **Correct Answer:** **Bagging reduces variance, while boosting reduces bias.**
* **Explanation:**
* **Bagging** (Bootstrap Aggregating, e.g., Random Forest) trains multiple independent learners in parallel on bootstrapped subsets of data and averages their predictions, which stabilizes the model and **reduces variance**.
* **Boosting** (e.g., AdaBoost, Gradient Boosting) trains learners sequentially, where each new model focuses on correcting the residual errors made by previous models, which systematically **reduces bias**.



---

### **Answer Key Summary**

| Question | Correct Option |
| --- | --- |
| **Q1** | **K-nearest neighbors** |
| **Q2** | **Probability weighing** |
| **Q3** | **Information gain** |
| **Q4** | **Mean squared error (MSE) method** |
| **Q5** | **Causes underfitting by generalizing too much** |
| **Q6** | **A larger epsilon creates a wider margin where small errors are ignored.** |
| **Q7** | **Bagging reduces variance, while boosting reduces bias.** |
