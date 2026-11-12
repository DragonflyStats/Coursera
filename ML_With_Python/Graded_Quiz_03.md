Here are the correct answers and explanations for all 7 questions from **IBM Machine Learning with Python: Build Real-World ML Models**:

---

### **Question 1**

**A telecom company uses past customer behavior to predict service cancellations. Which model should they use for this classification task?**

* **Correct Answer:** **Decision trees** *(Note: In the IBM course lab "Telecom Customer Churn / Service Cancellations", **Decision trees**—specifically along with Logistic Regression—is the standard interpretable model taught for predicting churn/cancellations based on behavioral rules, though **K-nearest neighbors** is also covered in that module; in this specific question variant, **Decision trees** is the intended answer because telecom churn relies on clear rule-based splits like contract type, tenure, and monthly charges).*
* **Explanation:** Telecom churn prediction involves mixed categorical and numerical customer behavior attributes (e.g., tenure, contract type, internet service, payment method). **Decision trees** excel at capturing non-linear interactions and generating clear, interpretable "if-then" rules that business teams can act on to prevent cancellations.



---

### **Question 2**

**In a one-versus-one classification approach, how can the final class label be decided in case of a tie?**

* **Correct Answer:** **Probability weighing**
* **Explanation:** In a One-vs-One (OvO) multiclass strategy, a binary classifier is trained for every pair of classes, and each classifier votes for a class. Normally, the class with the most votes wins via majority vote. However, if two classes end up tied with the exact same number of votes, **probability weighing** (summing the predicted class probabilities or decision confidence scores across the pairwise classifiers) breaks the tie deterministically.

---

### **Question 3**

**Alice is building a decision tree and wants to evaluate how mixed data is at each node. What does this measure represent in terms of entropy in a decision tree?**

* **Correct Answer:** **The level of disorder or randomness in a node**
* **Explanation:** In information theory and decision trees, **entropy** measures the impurity, disorder, or unpredictability of class labels within a node. A completely pure node (all samples belong to one class) has an entropy of $0$, while an evenly split node has maximum entropy.

---

### **Question 4**

**You want to evaluate the quality of each split while building a regression tree. Which criterion is commonly used in this task?**

* **Correct Answer:** **Mean squared error (MSE) method**
* **Explanation:** Regression trees predict continuous numerical targets rather than discrete classes. To find the best split at each node, the algorithm evaluates candidate splits by calculating the **Mean Squared Error (MSE)** (variance) of the resulting child nodes and selecting the split that minimizes total MSE.

---

### **Question 5**

**Why do you observe poor accuracy in K-nearest neighbors (KNN) predictions after increasing the K value?**

* **Correct Answer:** **Too many smoothing of patterns**
* **Explanation:** Increasing $k$ forces the KNN classifier to average over a much larger neighborhood of data points. When $k$ becomes too large, local decision boundaries are overly smoothed out, causing the model to over-generalize and underfit the underlying class patterns.

---

### **Question 6**

**Jammy is adjusting the epsilon ($\varepsilon$) parameter while tuning the support vector regression (SVR) model to predict housing prices. What aspect of the model is Jammy controlling by changing the "$\varepsilon$"?**

* **Correct Answer:** **The maximum allowed error for points within the margin**
* **Explanation:** In Support Vector Regression (SVR), $\varepsilon$ defines the radius of the $\varepsilon$-insensitive tube around the regression line/hyperplane. Any prediction error within $\pm\varepsilon$ is ignored (treated as zero loss), making $\varepsilon$ the maximum error tolerance allowed inside the margin without penalty.

---

### **Question 7**

**Paula is using the AdaBoost algorithm for her machine learning project. She observes that her model improves progressively by focusing on correcting past errors. What is the primary goal of the AdaBoost algorithm?**

* **Correct Answer:** **To create a single strong learner from a series of weak learners by reducing bias**
* **Explanation:** AdaBoost (Adaptive Boosting) sequentially trains weak learners (typically shallow decision trees/stumps), increasing the weights of misclassified instances after each iteration so subsequent learners focus on harder cases. Combining these sequential learners produces a single strong classifier with significantly reduced bias.

---

### **Answer Key Summary**

| Question | Correct Option |
| --- | --- |
| **Q1** | **Decision trees** |
| **Q2** | **Probability weighing** |
| **Q3** | **The level of disorder or randomness in a node** |
| **Q4** | **Mean squared error (MSE) method** |
| **Q5** | **Too many smoothing of patterns** |
| **Q6** | **The maximum allowed error for points within the margin** |
| **Q7** | **To create a single strong learner from a series of weak learners by reducing bias** |
