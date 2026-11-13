###### Summary Answer Key

1. **Increasing k will usually reduce the variance of estimated parameters.**
2. **Each of the k subsamples in K-fold cross-validation is used as a test set.**
3. **Assuming there is enough training data the number of folds in K-fold validation does not inherently result in underfitting.**
4. **A high variance of parameter estimates across cross-validation subsamples indicates likely overfitting.**
5. **Underfitting**


6. **Overfitting**


7. **'cross_val_predict'**
8. **All of the above are True.**
9. **All of the above are True.**
10. **'KFold' and `StratifiedKFold**`

---

###### Question 1

1. **Question Restatement:** Question 1: In K-fold cross-validation, how will increasing k affect the variance (across subsamples) of estimated model parameters?
2. **Options Listing:**
* Increasing k will not affect the variance of estimated parameters.
* Increasing k will usually increase the variance of estimated parameters.
* Increasing k will usually reduce the variance of estimated parameters.
* Increasing k will increase the variance of estimated parameters if models are underfit, but reduce it if models are overfit.


3. **Correct Answer Indication:** **Increasing k will usually reduce the variance of estimated parameters.**
4. **Explanation/Rationale:** As $k$ increases, each training fold contains a larger proportion of the overall dataset (approaching $N-1$ samples as $k \to N$). Because the model training sets in larger $k$ setups overlap more significantly, the parameter estimates computed across the different subsample folds become more stable and exhibit lower variance.

---

###### Question 2

1. **Question Restatement:** Question 2: Which statement about K-fold cross-validation below is TRUE?
2. **Options Listing:**
* Each subsample in K-fold cross-validation has at least k observations.
* Each of the k subsamples in K-fold cross-validation is used as a training set.
* Each of the k subsamples in K-fold cross-validation is used as a test set.
* None of the above


3. **Correct Answer Indication:** **Each of the k subsamples in K-fold cross-validation is used as a test set.**
4. **Explanation/Rationale:** In $K$-fold cross-validation, the dataset is partitioned into $k$ equal-sized subsets/folds. Over $k$ iterations, every individual fold serves as the held-out validation/test set exactly once, while the remaining $k-1$ folds are combined to form the training set.

---

###### Question 3

1. **Question Restatement:** Question 3: If a low-complexity model is underfitting during estimation, which of the following is MOST LIKELY true (holding the model constant) about K-fold cross-validation?
2. **Options Listing:**
* Assuming there is enough training data the number of folds in K-fold validation does not inherently result in underfitting.
* K-cross-validation with a small k will reduce or eliminate underfitting.
* K-fold cross-validation with a large k will reduce or eliminate underfitting.
* None of the above.


3. **Correct Answer Indication:** **Assuming there is enough training data the number of folds in K-fold validation does not inherently result in underfitting.**
4. **Explanation/Rationale:** Underfitting is caused by high model bias—i.e., the algorithm/model architecture is structurally too simple to capture the underlying pattern in the data. Adjusting the number of cross-validation folds ($k$) evaluates model performance under different split ratios but does not alter the underlying model complexity or fix structural underfitting.

---

###### Question 4

1. **Question Restatement:** Question 4: Which of the following statements about a high-complexity model in a linear regression setting is TRUE?
2. **Options Listing:**
* Cross-validation with a small k will reduce or eliminate overfitting.
* A high variance of parameter estimates across cross-validation subsamples indicates likely overfitting.
* A low variance of parameter estimates across cross-validation subsamples indicates likely overfitting.
* Cross-validation with a large k will reduce or eliminate overfitting.


3. **Correct Answer Indication:** **A high variance of parameter estimates across cross-validation subsamples indicates likely overfitting.**
4. **Explanation/Rationale:** High-complexity models (such as high-degree polynomial regressions) tend to suffer from high variance, meaning their learned parameters fit noise in specific subsets of data. Consequently, fitting the model across different cross-validation subsamples produces wildly fluctuating parameter estimates.

---

###### Question 5

1. **Question Restatement:** Question 5: Reviewing the below graph, what is the model considered when associated with the left side of this curve before hitting the plateau?


2. **Options Listing:**
* Overfitting


* Linear regression


* Cross validation error


* Underfitting




3. **Correct Answer Indication:** **Underfitting**


4. **Explanation/Rationale:** As illustrated in the diagram, the blue shaded region on the far left corresponds to low model complexity. In this region, both the training error ($J_{\text{train}}(\theta)$) and the cross-validation error ($J_{\text{cv}}(\theta)$) are high because the model is too simple to capture the underlying data patterns (underfitting).



---

###### Question 6

1. **Question Restatement:** Question 6: Reviewing the below graph, what is the model considered when associated with the right side of the cross validation error?


2. **Options Listing:**
* Overfitting


* Polynomial regression
* Training error


* Underfitting




3. **Correct Answer Indication:** **Overfitting**


4. **Explanation/Rationale:** As highlighted in the second diagram, the blue shaded region on the right side indicates a regime of high model complexity. Here, the training error ($J_{\text{train}}(\theta)$) continues to decrease toward zero, while the cross-validation error ($J_{\text{cv}}(\theta)$) sharply increases. This widening gap between low training error and high validation error is the hallmark of overfitting.



---

###### Question 7

1. **Question Restatement:** Question 7: Which of the following functions perform K-fold cross-validation for us, appropriately fitting and transforming at every step of the way?
2. **Options Listing:**
* 'cross_val'
* 'cross_validation'
* 'cross_validation_predict'
* 'cross_val_predict'


3. **Correct Answer Indication:** **'cross_val_predict'**
4. **Explanation/Rationale:** In `scikit-learn`, `cross_val_predict` (and `cross_val_score`) executes cross-validation iteratively across dataset splits, fitting estimators and transforming/predicting outputs on out-of-fold test sets at each step without data leakage.

---

###### Question 8

1. **Question Restatement:** Question 8: Which of the following statements about cross-validation is/are True?
2. **Options Listing:**
* Cross-validation is essential step in hyperparameter tuning.
* We can manually generate folds by using KFold function.
* GridSearchCV is commontly used in cross-validation.
* All of the above are True.


3. **Correct Answer Indication:** **All of the above are True.**
4. **Explanation/Rationale:** Every statement is accurate: cross-validation prevents overfitting during hyperparameter optimization, `KFold` (from `sklearn.model_selection`) generates cross-validation fold indices manually, and `GridSearchCV` automates grid search hyperparameter tuning over cross-validation splits.

---

###### Question 9

1. **Question Restatement:** Question 9: Which of the following statements about GridSearchCV is/are True?
2. **Options Listing:**
* GridSearchCV scans over a dictionary of parameters.
* GridSearchCV finds the hyperparameter set that has the best out-of-sample score.
* GridSearchCV retrains on all data with the "best" hyper-parameters.
* All of the above are True.


3. **Correct Answer Indication:** **All of the above are True.**
4. **Explanation/Rationale:** In `scikit-learn`, `GridSearchCV` iterates through a user-provided parameter grid dictionary, evaluates model combinations using cross-validation scores, and (when `refit=True`, which is default) automatically refits the best estimator on the entire dataset.

---

###### Question 10

1. **Question Restatement:** Question 10: Which of the below functions, randomly selects data to be in the train/test folds?
2. **Options Listing:**
* `StratifiedKFold`
* `GroupKFold`
* 'KFold' and `StratifiedKFold`
* 'KFold'


3. **Correct Answer Indication:** **'KFold' and `StratifiedKFold**`
4. **Explanation/Rationale:** Both `KFold` and `StratifiedKFold` shuffle and split data instances into validation folds (when `shuffle=True`), whereas `GroupKFold` explicitly assigns non-overlapping structured group clusters to folds rather than selecting independent observations randomly.
