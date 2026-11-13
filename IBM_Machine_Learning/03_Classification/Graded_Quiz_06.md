Here are the correct answers and explanations for all 10 questions on handling unbalanced classes and model interpretability:

### 1. Question 1

**Which of the following statements about Downsampling is TRUE?**

* **Correct Answer:** **Downsampling is likely to decrease Precision.**
* **Explanation:** Downsampling removes observations from the majority class to balance the dataset. Because the model sees fewer majority-class examples, it becomes more aggressive in predicting the minority (positive) class—which typically increases Recall but results in more false positives, thereby **decreasing Precision**. (It does *not* preserve all original observations, nor does it focus excessively on the majority class.)



---

### 2. Question 2

**Which of the following statements about Random Upsampling is TRUE?**

* **Correct Answer:** **Random Upsampling preserves all original observations.**
* **Explanation:** Random upsampling (oversampling) balances classes by randomly duplicating existing observations from the minority class without deleting any data. Because every original data point remains intact (and no brand-new synthetic points are invented), it preserves all original observations.



---

### 3. Question 3

**Which of the following statements about Synthetic Upsampling is TRUE?**

* **Correct Answer:** **Synthetic Upsampling generates observations that were not part of the original data.**
* **Explanation:** Unlike random upsampling (which merely duplicates existing rows), synthetic upsampling techniques such as SMOTE and ADASYN interpolate between neighboring minority-class points in feature space to generate brand-new synthetic observations.



---

### 4. Question 4

**What can help humans to interpret the behaviors and methods of Machine Learning models more easily?**

* **Correct Answer:** **Model Explanations**
* **Explanation:** **Model Explanations** (such as feature importance, SHAP values, partial dependence plots, and surrogate models) provide human-understandable insights into how and why a machine learning model makes specific predictions.

---

### 5. Question 5

**What type of explanation method can be used to explain different types of Machine Learning models no matter the model structures and complexity?**

* **Correct Answer:** **Model-Agnostic Explanations**
* **Explanation:** **Model-Agnostic Explanations** separate the explanation mechanism from the underlying machine learning algorithm, allowing them to interpret any model (from linear regression to deep neural networks) regardless of its internal structure or complexity. *(Note: LIME is one specific local example of a model-agnostic method, whereas "Model-Agnostic Explanations" is the overarching category described in the prompt.)*

---

### 6. Question 6

**What reason might a Global Surrogate model fail?**

* **Correct Answer:** **Large inconsistency between surrogate models and black-box models**
* **Explanation:** A global surrogate model is an interpretable model (like a decision tree) trained to approximate the predictions of a complex black-box model. If there is a **large inconsistency** (low fidelity / poor $R^2$) between the surrogate's predictions and the black-box model's predictions, the surrogate fails to accurately represent how the black-box model actually behaves.

---

### 7. Question 7

**When working with unbalanced sets, what should be done to the samples so the class balance remains consistent in both the train and test set?**

* **Correct Answer:** **Stratify the samples**
* **Explanation:** **Stratified sampling** (`stratify=y`) ensures that both the training and testing splits preserve the exact same class proportions as the original imbalanced dataset.



---

### 8. Question 8

**What approach are you using when trying to increase the size of a minority class so that it is similar to the size of the majority class?**

* **Correct Answer:** **Oversampling**
* **Explanation:** **Oversampling** (also known as upsampling) is the general umbrella approach of increasing the number of minority-class instances (either via duplication or synthetic generation) to match the size of the majority class.



---

### 9. Question 9

**What approach are you using when you create a new sample of a minority class that does not yet exist?**

* **Correct Answer:** **Synthetic Oversampling**
* **Explanation:** **Synthetic Oversampling** (such as SMOTE or ADASYN) generates new, artificial minority-class data points that did not previously exist in the raw dataset.



---

### 10. Question 10

**What intuitive technique is used for unbalanced datasets that ensures a continuous downsample for each of the bootstrap samples?**

* **Correct Answer:** **Blagging**
* **Explanation:** **Blagging** (**B**alanced **B**agging) is an ensemble technique for imbalanced datasets in which each bootstrap sample drawn to train a base learner is downsampled so that every individual bootstrap sample has a balanced class distribution.

---

### Answer Key Summary

| Question | Correct Answer |
| --- | --- |
| **Question 1** | **Downsampling is likely to decrease Precision.** |
| **Question 2** | **Random Upsampling preserves all original observations.** |
| **Question 3** | **Synthetic Upsampling generates observations that were not part of the original data.** |
| **Question 4** | **Model Explanations** |
| **Question 5** | **Model-Agnostic Explanations** |
| **Question 6** | **Large inconsistency between surrogate models and black-box models** |
| **Question 7** | **Stratify the samples** |
| **Question 8** | **Oversampling** |
| **Question 9** | **Synthetic Oversampling** |
| **Question 10** | **Blagging** |
