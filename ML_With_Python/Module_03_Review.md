The last two sets of 7 questions cover the core supervised learning syllabus for **IBM's Machine Learning with Python: Build Real-World ML Models** (which builds directly on the classification algorithms outlined in your course syllabus).

### 1. Supervised Model Selection for Business Use Cases (Q1)

* **Topics Covered:** Matching business classification problems (retail customer segmentation and telecom churn/cancellation prediction) to appropriate supervised models, such as **K-Nearest Neighbors (KNN)** and **Decision Trees**.


* **Core Competency:** Evaluating trade-offs between distance-based similarity models (KNN) and interpretable rule-based models ("if-then" splits in Decision Trees) when handling mixed customer behavioral features.



### 2. Multi-Class Classification Strategies (Q2)

* **Topics Covered:** Decomposition techniques for multi-class problems, specifically **One-versus-One (OvO)** classification.
* **Core Competency:** Understanding how pairwise binary classifiers cast majority votes to determine a final class, and how **probability weighing** (summing predicted confidence scores) resolves ties deterministically.

### 3. Decision Trees & Regression Trees (Q3 & Q4)

* **Topics Covered:** Tree-building mechanics and split-quality criteria across both categorical and continuous targets.


* **Core Competency:**
* **Classification Trees:** Using **entropy** (measuring disorder/impurity in a node) and **information gain** (reduction in entropy) to select optimal feature splits.
* **Regression Trees:** Using **Mean Squared Error (MSE)** reduction to evaluate split quality when predicting continuous numerical outcomes.



### 4. K-Nearest Neighbors (KNN) & Bias-Variance Trade-off (Q5)

* **Topics Covered:** Hyperparameter tuning in instance-based learning, specifically the impact of increasing $k$ (number of neighbors).


* **Core Competency:** Recognizing how increasing $k$ over-smooths local decision boundaries, causing the model to over-generalize and suffer from **underfitting** (high bias).

### 5. Support Vector Machines & Support Vector Regression (Q6)

* **Topics Covered:** Extending hyperplane margin concepts from classification (SVM) into continuous prediction (**Support Vector Regression / SVR**).


* **Core Competency:** Understanding how the **epsilon ($\varepsilon$)** hyperparameter defines the width of the $\varepsilon$-insensitive tolerance margin around the regression line, ignoring small errors within $\pm\varepsilon$ to control model sensitivity to noise.

### 6. Ensemble Learning: Bagging vs. Boosting (Q7)

* **Topics Covered:** Combining multiple weak or base learners to improve generalization and predictive power.


* **Core Competency:** Distinguishing between parallel and sequential ensemble strategies:
* **Bagging (Bootstrap Aggregating):** Trains independent models in parallel to stabilize predictions and **reduce variance**.


* **Boosting (e.g., AdaBoost):** Trains weak learners sequentially, weighting misclassified instances to progressively correct past errors and **reduce bias**.



---

### Syllabus Progression Overview

| Question Pair | Algorithm Family | Key Analytical Focus |
| --- | --- | --- |
| **Q1** | Classification Overview | Algorithm-to-problem mapping (Customer Behavior & Churn)

 |
| **Q2** | Multi-Class Classification | One-vs-One voting & probability tie-breaking |
| **Q3 – Q4** | Tree-Based Models | Split criteria: Entropy/Information Gain vs. MSE |
| **Q5** | K-Nearest Neighbors (KNN) | Hyperparameter $k$, pattern smoothing, and underfitting

 |
| **Q6** | Support Vector Machines (SVR) | Margin tolerance ($\varepsilon$-insensitive tube) and error handling

 |
| **Q7** | Ensemble Methods | Variance reduction (Bagging) vs. Bias reduction (Boosting/AdaBoost)

 |
