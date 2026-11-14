## Graded Quiz 02 - KNN
---

### 1. Question 1

**Which one of the following statements is true regarding K Nearest Neighbors?**

* **Correct Answer:** **K Nearest Neighbors (KNN) assumes that points which are close together are similar.**
* **Explanation:** The foundational assumption of KNN is spatial locality—observations that sit close to one another in feature space share similar characteristics and target outcomes. (Distance is heavily dependent on feature scale, Manhattan distance uses absolute differences rather than squared roots of sums of squares, and Euclidean distance suffers in high-dimensional spaces due to the curse of dimensionality.)

---

### 2. Question 2

**Which one of the following statements is most accurate?**

* **Correct Answer:** **K nearest neighbors (KNN) needs to remember the entire training dataset in order to classify a new data sample.**
* **Explanation:** KNN is a non-parametric, lazy-learning algorithm: it stores the entire training dataset in memory and computes distances to every training observation at prediction time (making prediction relatively slow, whereas parametric models like Linear Regression only store learned coefficients).

---

### 3. Question 3

**Which one of the following statements is most accurate about K Nearest Neighbors (KNN)?**

* **Correct Answer:** **KNN can be used for both classification and regression.**
* **Explanation:** KNN is a supervised learning algorithm capable of both **classification** (assigning the majority class among the $k$ nearest neighbors) and **regression** (averaging the target values of the $k$ nearest neighbors).

---

### 4. Question 4

**(True/False) K Nearest Neighbors with large k tend to be the best classifiers.**

* **Correct Answer:** **False**
* **Explanation:** While a very small $k$ causes overfitting to noise, making $k$ too large over-smooths decision boundaries and causes the classifier to underfit (biased toward the majority class). The optimal $k$ is problem-dependent and must be tuned via cross-validation.



---

### 5. Question 5

**When building a KNN classifier for a variable with 2 classes, it is advantageous to set the neighbor count k to an odd number.**

* **Correct Answer:** **True**
* **Explanation:** In binary (2-class) classification, choosing an **odd** value for $k$ prevents exact majority-vote ties between the two classes.

---

### 6. Question 6

**The Euclidean distance between two points will always be shorter than or equal to the Manhattan distance.**

* **Correct Answer:** **True**
* **Explanation:** Euclidean distance ($L_2 = \sqrt{\sum (x_i - y_i)^2}$) measures the direct straight-line ("as the crow flies") path between two points, whereas Manhattan distance ($L_1 = \sum \vert{}x_i - y_i\vert{}$) measures grid-aligned axis travel. By the triangle inequality, the straight-line path is always less than or equal to the sum of orthogonal segments ($L_2 \le L_1$), with equality holding only when the points differ along at most one coordinate axis.

---

### 7. Question 7

**The main purpose of scaling features before fitting a k nearest neighbor model is to:**

* **Correct Answer:** **Ensure that features have similar influence on the distance calculation**
* **Explanation:** Because KNN relies directly on distance calculations, features measured on larger numerical scales (e.g., income in thousands vs. age in years) will dominate the distance metric unless all features are standardized or normalized to comparable ranges.



---

### 8. Question 8

**These are all pros of the k nearest neighbor algorithm EXCEPT:**

* **Correct Answer:** **It is sensitive to the curse of dimensionality**
* **Explanation:** Sensitivity to the **curse of dimensionality** (where distances between points become increasingly uniform and uninformative as the number of features grows) is a major **disadvantage (con)** of KNN, not an advantage.

---

### Answer Key Summary

| Question | Correct Answer |
| --- | --- |
| **Question 1** | **K Nearest Neighbors (KNN) assumes that points which are close together are similar.** |
| **Question 2** | **K nearest neighbors (KNN) needs to remember the entire training dataset in order to classify a new data sample.** |
| **Question 3** | **KNN can be used for both classification and regression.** |
| **Question 4** | **False** |
| **Question 5** | **True** |
| **Question 6** | **True** |
| **Question 7** | **Ensure that features have similar influence on the distance calculation** |
| **Question 8** | **It is sensitive to the curse of dimensionality** |
