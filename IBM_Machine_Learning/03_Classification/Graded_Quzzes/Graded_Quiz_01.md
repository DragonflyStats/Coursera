# IBM: Supervised Machine Learning - Classification
## Module 1 Quiz: Logistic Regression

---

## Question 1

The output of a logistic regression model applied to a data sample _____________.

### Options

A. Tells you the odds of the sample belonging to a certain class.

B. Is the probability of the sample being in a certain class.

C. Is the log odds of the sample, which you can use for interpretive purposes.

D. Tells you which class the sample belongs to.

### ✅ Correct Answer

**B. Is the probability of the sample being in a certain class.**

### Explanation

The output of a logistic regression model is a probability between 0 and 1. A threshold (typically 0.5) is then used to convert this probability into a class prediction.

---

## Question 2

Describe how any binary classification model can be extended from its basic form on two classes to work on multiple classes.

### Options

A. Use the coefficients from a linear regression model to weight the classes.

B. Use a one-versus-all technique, where for each class you fit a binary classifier to that class versus all of the other classes.

C. Use process of elimination to discard any unimportant classes.

D. Fit the binary classifier to all of the classes simultaneously.

### ✅ Correct Answer

**B. Use a one-versus-all technique, where for each class you fit a binary classifier to that class versus all of the other classes.**

### Explanation

One-vs-Rest (OvR) is a common strategy for extending binary classifiers to multiclass problems. A separate classifier is trained for each class against all remaining classes.

---

## Question 3

Which tool is most appropriate for measuring the performance of a classifier on unbalanced classes?

### Options

A. The precision-recall curve.

B. The true positive rate.

C. The false positive rate.

D. The Receiver Operating Characteristic (ROC) curve.

### ✅ Correct Answer

**A. The precision-recall curve.**

### Explanation

For highly imbalanced datasets, precision-recall curves provide a more informative measure of performance because they focus on the minority class and are less influenced by large numbers of true negatives.

---

## Question 4

(True/False) One of the requirements of logistic regression is that you need a variable with two classes.

### Options

A. True

B. False

### ✅ Correct Answer

**A. True**

### Explanation

Standard logistic regression is designed for binary outcomes. Multiclass problems can be handled through extensions such as One-vs-Rest or Multinomial Logistic Regression.

---

## Question 5

(True/False) The shape of ROC curves are the leading indicator of an overfitted logistic regression.

### Options

A. True

B. False

### ✅ Correct Answer

**B. False**

### Explanation

Overfitting is best identified by comparing training and test performance. ROC curves alone do not reliably indicate overfitting.

---

## Question 6

There are 50 positive outcomes in the test data and 100 observations. Using a 50% threshold, the classifier predicts 40 positive outcomes, of which 10 are incorrect.

What is the classifier's Precision?

### Options

A. 25%

B. 60%

C. 75%

D. 80%

### ✅ Correct Answer

**C. 75%**

### Calculation

Predicted Positives = 40

Incorrect Positive Predictions (False Positives) = 10

True Positives = 40 − 10 = 30

\[
Precision = \frac{TP}{TP+FP}
= \frac{30}{40}
= 0.75
\]

### Explanation

Precision measures how many positive predictions were actually correct.

---

## Question 7

Using the same scenario, what is the classifier's Recall?

### Options

A. 25%

B. 60%

C. 75%

D. 80%

### ✅ Correct Answer

**B. 60%**

### Calculation

Actual Positives = 50

True Positives = 30

\[
Recall = \frac{TP}{TP+FN}
= \frac{30}{50}
= 0.60
\]

### Explanation

Recall measures the proportion of actual positive cases that were correctly identified.

---

## Question 8

Using the same scenario, what is the classifier's F1 Score?

### Options

A. 50%

B. 66.7%

C. 67.5%

D. 70%

### ✅ Correct Answer

**B. 66.7%**

### Calculation

Precision = 0.75

Recall = 0.60

\[
F1 = 2\frac{PR}{P+R}
\]

\[
F1 =
2\frac{(0.75)(0.60)}
{0.75+0.60}
=
\frac{0.90}{1.35}
=
0.6667
\]

\[
F1 = 66.7\%
\]

### Explanation

The F1 score balances Precision and Recall into a single metric.

---

## Question 9

Increasing the threshold to 60% results in 5 fewer positive predictions, all of which are correct.

Which statement is TRUE?

### Options

A. The F1 score of the classifier would decrease.

B. The area under the ROC curve would decrease.

C. The F1 score of the classifier would remain the same.

D. The area under the ROC curve would remain the same.

### ✅ Correct Answer

**D. The area under the ROC curve would remain the same.**

### Explanation

Changing the classification threshold affects Precision and Recall, but it does not change the underlying model predictions. Therefore, the ROC curve and its AUC remain unchanged.

---

## Question 10

The threshold is now increased further, to 70%.

Which statement is TRUE?

### Options

A. The Recall of the classifier would increase.

B. The Precision of the classifier would decrease.

C. The Recall of the classifier would increase or remain the same.

D. The Precision of the classifier would increase or remain the same.

### ✅ Correct Answer

**D. The Precision of the classifier would increase or remain the same.**

### Explanation

Increasing the threshold generally results in fewer positive predictions. The remaining positive predictions tend to be more confident, so Precision typically increases or stays the same, while Recall usually decreases.

---

# Answer Summary

| Question | Answer |
|-----------|---------|
| 1 | **B** |
| 2 | **B** |
| 3 | **A** |
| 4 | **B** |
| 5 | **B** |
| 6 | **C** |
| 7 | **B** |
| 8 | **B** |
| 9 | **D** |
| 10 | **D** |
