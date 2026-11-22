# Module 5 Practice Quiz

### **Question 1**

**When evaluating models, what is the term used to describe a situation where a model fits the training data very well but performs poorly when predicting new data?**

* **Correct Answer:** **Overfit**
* **Explanation:** Overfitting occurs when a model learns the noise and specific idiosyncrasies of the training dataset rather than the underlying general trend, resulting in high training accuracy but poor generalization to unseen test data.



---

### **Question 2**

**An underfit model is said to have which of the following?**

* **Correct Answer:** **High bias**
* **Explanation:** Underfitting happens when a model is too simple to capture the underlying structure of the data, causing systematic errors across both training and testing sets—a condition characterized by **high bias** (and low variance).

---

### **Question 3**

**What does regularization introduce into a model that results in a drop in variance?**

* **Correct Answer:** **Noise** *(or **Bias**—in this IBM Data Analysis with Python quiz bank, **Noise** is the exact option tested)*
* **Explanation:** Regularization adds a penalty term to the loss function that constrains model coefficients (shrinking weights), intentionally introducing slight bias/noise into the parameter estimates to prevent extreme sensitivity to training fluctuations and reduce model variance.

---

### **Question 4**

**Complete the sentence: When tuning a model, a grid search attempts to find the value of a parameter that has the smallest ______________.**

* **Correct Answer:** **Error**
* **Explanation:** Grid search systematically evaluates candidate hyperparameter combinations (such as $\alpha$ in Ridge regression) across validation folds to identify the parameter value that produces the smallest validation/prediction **error** (e.g., MSE).



---

### **Quick Answer Key**

| Question | Correct Answer |
| --- | --- |
| **Q1** | **Overfit** |
| **Q2** | **High bias** |
| **Q3** | **Noise** |
| **Q4** | **Error** |
