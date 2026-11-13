# Supervised Machine Learning: Classification (IBM)

## Course Information

| Attribute | Details |
|------------|------------|
| Course Name | Supervised Machine Learning: Classification |
| Provider | IBM |
| Platform | Coursera |
| Specialization | IBM Introduction to Machine Learning |
| Course Number | Course 3 of 4 |
| Level | Intermediate |
| Language | English |
| Primary Focus | Supervised Machine Learning Classification |

---

# Course Overview

This course introduces one of the most important families of supervised machine learning models: **classification algorithms**.

Classification models are used to predict **categorical outcomes**, such as:

- Fraud vs Non-Fraud
- Spam vs Not Spam
- Customer Churn vs Retention
- Disease vs No Disease
- Loan Approval vs Rejection

The course combines theoretical foundations with hands-on implementation using Python and Scikit-Learn.

Students learn how to:

- Build classification models
- Interpret model outputs
- Compare model performance
- Select appropriate evaluation metrics
- Handle imbalanced datasets
- Apply ensemble learning techniques

---

# Course Learning Outcomes

By the end of this course, learners will be able to:

## Classification Fundamentals

- Distinguish between regression and classification problems
- Identify appropriate classification use cases
- Understand decision boundaries and class predictions

## Logistic Regression

- Explain logistic regression theory
- Build logistic regression models
- Interpret model coefficients
- Generate probability estimates

## K-Nearest Neighbours (KNN)

- Understand nearest-neighbour classification
- Choose appropriate values of K
- Scale and prepare data correctly

## Support Vector Machines (SVM)

- Understand hyperplanes and margins
- Apply linear and non-linear kernels
- Build classification models using SVMs

## Decision Trees

- Understand recursive partitioning
- Interpret tree structures
- Control overfitting

## Ensemble Methods

- Understand bagging and boosting
- Build Random Forest classifiers
- Apply Gradient Boosting approaches

## Model Evaluation

- Calculate and interpret:
  - Accuracy
  - Precision
  - Recall
  - F1 Score
  - ROC-AUC

## Imbalanced Classification

- Detect class imbalance problems
- Apply undersampling techniques
- Apply oversampling techniques
- Evaluate models appropriately when classes are unbalanced

---

# Prerequisites

Learners should have prior knowledge of:

- Python programming
- Data Cleaning
- Exploratory Data Analysis (EDA)
- Statistics
- Probability
- Linear Algebra
- Calculus

---

# Detailed Syllabus

---

# Module 1: Logistic Regression

## Module Overview

Logistic Regression is one of the most widely used classification techniques.

It is particularly common in:

- Finance
- Insurance
- Healthcare
- Government
- Risk assessment

because of its interpretability and regulatory acceptance.

---

## Topics Covered

### Introduction to Classification

- Classification vs Regression
- Binary outcomes
- Categorical prediction problems

### Why Linear Regression is Insufficient

- Predictions outside the range 0–1
- Need for probability-based predictions

### Logistic Function (Sigmoid)

The logistic function transforms outputs into probabilities:

\[
P(Y=1)=\frac{1}{1+e^{-z}}
\]

Key properties:

- Outputs values between 0 and 1
- Supports probability interpretation
- Enables classification using thresholds

### Odds and Log-Odds

- Odds ratios
- Logit transformation
- Interpreting coefficients

### Maximum Likelihood Estimation

- Model fitting
- Optimisation concepts
- Parameter estimation

### Classification Thresholds

Examples:

- Threshold = 0.5
- Threshold = 0.7

Understanding the impact of changing classification thresholds.

### Confusion Matrix

| Actual / Predicted | Positive | Negative |
|-------------------|-----------|-----------|
| Positive | TP | FN |
| Negative | FP | TN |

### Classification Metrics

#### Accuracy

\[
\frac{TP + TN}{Total}
\]

#### Precision

\[
\frac{TP}{TP + FP}
\]

#### Recall

\[
\frac{TP}{TP + FN}
\]

#### F1 Score

\[
2 \times \frac{Precision \times Recall}{Precision + Recall}
\]

---

## Practical Activities

Using Scikit-Learn to:

- Train logistic regression models
- Generate probabilistic predictions
- Evaluate classification performance
- Compare decision thresholds

---

## Assessment

**Graded Quiz: Logistic Regression**

---

# Module 2: K-Nearest Neighbours (KNN)

## Module Overview

K-Nearest Neighbours is a simple but effective instance-based classification algorithm.

Rather than building an explicit model, KNN classifies observations based on nearby observations.

---

## Topics Covered

### Lazy Learning

KNN stores training data and performs classification during prediction.

### Distance Measures

#### Euclidean Distance

\[
d=\sqrt{(x_1-x_2)^2 + (y_1-y_2)^2}
\]

#### Manhattan Distance

#### Minkowski Distance

### Selecting K

Understanding:

- Small K → High Variance
- Large K → High Bias

### Feature Scaling

Importance of:

- Standardization
- Normalization

because KNN relies heavily on distances.

### Decision Boundaries

- Flexible classification regions
- Non-linear decision boundaries

---

## Practical Activities

- Building KNN classifiers
- Testing multiple K values
- Performance comparison

---

## Assessment

**Graded Quiz: K-Nearest Neighbours**

---

# Module 3: Support Vector Machines (SVM)

## Module Overview

Support Vector Machines separate observations using optimal decision boundaries called hyperplanes.

SVMs are powerful classifiers capable of handling complex datasets.

---

## Topics Covered

### Hyperplanes

Understanding:

- Linear decision boundaries
- Multi-dimensional feature spaces

### Support Vectors

Critical observations that define the classification boundary.

### Margin Maximisation

Learning how SVMs maximise class separation.

Benefits:

- Better generalisation
- Reduced overfitting

### Soft Margins

Allowing some misclassification to improve robustness.

### Kernel Methods

The kernel trick enables modelling non-linear relationships.

Common kernels:

- Linear Kernel
- Polynomial Kernel
- Radial Basis Function (RBF)

### Advantages and Limitations

Advantages:

- Effective in high dimensions
- Flexible decision boundaries

Limitations:

- Computational cost
- Hyperparameter sensitivity

---

## Practical Activities

Using Scikit-Learn to:

- Train linear SVM models
- Train kernel SVM models
- Tune parameters

---

## Assessment

**Graded Quiz: Support Vector Machines**

---

# Module 4: Decision Trees

## Module Overview

Decision Trees are highly interpretable classification algorithms that split data into increasingly homogeneous groups.

---

## Topics Covered

### Tree Structure

Components include:

- Root Node
- Internal Nodes
- Leaf Nodes

### Recursive Splitting

Creating branches based on feature values.

### Impurity Measures

#### Gini Impurity

Measures class mixing at a node.

#### Entropy

Measures information uncertainty.

#### Information Gain

Measures improvement from a split.

### Tree Construction

- Selecting split variables
- Determining split points
- Growing classification trees

### Overfitting

Problems with deep trees.

Control methods:

- Maximum depth
- Minimum leaf size
- Pruning

### Interpretability

Decision Trees provide transparent rules such as:

```text
Age > 50?
    Yes -> High Risk
    No  -> Low Risk
```

---

## Practical Activities

- Building decision trees
- Visualising tree diagrams
- Evaluating model complexity

---

## Assessment

**Graded Quiz: Decision Trees**

---

# Module 5: Ensemble Models

## Module Overview

Ensemble methods combine multiple models to improve prediction performance and robustness.

---

## Topics Covered

### Introduction to Ensemble Learning

Combining multiple weak learners into stronger predictive systems.

### Bagging

Bootstrap Aggregating:

- Random resampling
- Multiple model creation
- Majority voting

Benefits:

- Reduced variance
- Increased stability

### Random Forest

The most widely used tree ensemble.

Key concepts:

- Bootstrap samples
- Random feature selection
- Majority vote classification

Advantages:

- High predictive accuracy
- Resistance to overfitting
- Robustness to noisy data

### Boosting

Building models sequentially while correcting prior errors.

### Gradient Boosting

Students learn:

- Residual correction
- Sequential tree learning
- Loss function optimisation

### Ensemble Comparison

| Method | Primary Strength |
|----------|----------------|
| Decision Tree | Interpretability |
| Random Forest | Stability |
| Gradient Boosting | Predictive Performance |

---

## Practical Activities

Building:

- Bagging classifiers
- Random forests
- Gradient boosting models

---

## Assessment

**Graded Quiz: Ensemble Models**

---

# Module 6: Modelling Unbalanced Classes

## Module Overview

Many real-world classification problems contain highly unequal class distributions.

Examples include:

- Credit card fraud
- Disease detection
- Network intrusion detection

---

## Topics Covered

### Understanding Class Imbalance

Example:

| Class | Proportion |
|---------|-----------|
| Legitimate Transactions | 99% |
| Fraud Transactions | 1% |

### Why Accuracy Can Be Misleading

A model predicting every observation as non-fraud would achieve high accuracy while providing no practical value.

### Precision and Recall for Imbalanced Data

Greater emphasis on:

- Precision
- Recall
- F1 Score

### Undersampling

Reducing majority class observations.

Advantages:

- Faster training
- Balanced datasets

Disadvantages:

- Information loss

### Oversampling

Increasing minority class observations.

Advantages:

- Better minority representation

Disadvantages:

- Potential overfitting

### Stratified Sampling

Maintaining class proportions across:

- Training sets
- Validation sets
- Test sets

### Robust Evaluation

Using:

- ROC Curves
- Precision-Recall Curves
- AUC Metrics

---

## Final Project

Students choose one of:

### Option 1

AI-Graded Final Project

### Option 2

Peer-Graded Final Project

Typical project objectives:

- Build a classification model
- Compare multiple algorithms
- Select the best-performing approach
- Communicate findings and recommendations

---

## Assessment

**Graded Quiz: Modelling Unbalanced Classes**

---

# Software and Tools Used

The course primarily uses:

- Python
- Jupyter Notebooks
- NumPy
- Pandas
- Matplotlib
- Scikit-Learn

Typical
