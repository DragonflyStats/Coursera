###### Summary Answer Key

1. **To avoid overfitting**
2. **measure error and performance of the model**
3. **Data leakage**
4. **Linear Regression**
5. **Fit the actual model and learn the parameters**
6. **Non-linear effects.**
7. **Prediction and Interpretation.**
8. **Unseen data**
9. **X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.4)**
10. **polyFeat = PolynomialFeatures(degree=3)**

---

###### Question 1

1. **Question Restatement:** The main purpose of splitting your data into a training and test sets is:
2. **Options Listing:**
* To improve accuracy
* To avoid overfitting
* To improve regularization
* To improve crossvalidation and overfitting


3. **Correct Answer Indication:** **To avoid overfitting**
4. **Explanation/Rationale:** Splitting data into separate training and testing subsets ensures that model performance is evaluated on unseen data, allowing practitioners to detect and prevent overfitting (where a model memorizes noise in the training set rather than learning generalizable patterns).

---

###### Question 2

1. **Question Restatement:** Complete the following sentence: The training data is used to fit the model, while the test data is used to:
2. **Options Listing:**
* measure the parameters and hyperparameters of the model
* tweak the model hyperparameters
* tweak the model parameters
* measure error and performance of the model


3. **Correct Answer Indication:** **measure error and performance of the model**
4. **Explanation/Rationale:** The test set serves as a completely independent dataset held out during training to evaluate how well the trained model generalizes to new observations by calculating unbiased error and performance metrics (e.g., RMSE, accuracy).

---

###### Question 3

1. **Question Restatement:** What term is used if your test data leaks into the training data?
2. **Options Listing:**
* Test leakage
* Training leakage
* Data leakage
* Historical data leakage


3. **Correct Answer Indication:** **Data leakage**
4. **Explanation/Rationale:** Data leakage occurs when information from outside the training dataset (such as target or feature values from the test set or future data) is inadvertently used to train the model, resulting in overly optimistic performance estimates during training that fail in real-world deployment.

---

###### Question 4

1. **Question Restatement:** Which one of the below terms use a linear combination of features?
2. **Options Listing:**
* Binomial Regression
* Linear Regression
* Multiple Regression
* Polynomial Regression


3. **Correct Answer Indication:** **Linear Regression**
4. **Explanation/Rationale:** Standard linear regression computes the target output directly as a weighted sum (linear combination) of the input features: $y = \beta_0 + \beta_1 x_1 + \beta_2 x_2 + \dots + \beta_p x_p + \epsilon$.

---

###### Question 5

1. **Question Restatement:** When splitting your data, what is the purpose of the training data?
2. **Options Listing:**
* Compare with the actual value
* Fit the actual model and learn the parameters
* Predict the label with the model
* Measure errors


3. **Correct Answer Indication:** **Fit the actual model and learn the parameters**
4. **Explanation/Rationale:** The primary role of the training dataset is to optimize the model's loss/cost function and learn its underlying mathematical parameters (such as coefficients or weights) during the fitting process.

---

###### Question 6

1. **Question Restatement:** Polynomial features capture what effects?
2. **Options Listing:**
* Non-linear effects.
* Linear effects.
* Multiple effects.
* Regression effects.


3. **Correct Answer Indication:** **Non-linear effects.**
4. **Explanation/Rationale:** By adding higher-order terms (e.g., $x^2, x^3$) or interaction terms ($x_1 x_2$) to a linear framework, polynomial features allow linear algorithms to fit non-linear curves and relationships in the data.

---

###### Question 7

1. **Question Restatement:** Which fundamental problems are being solved by adding non-linear patterns, such as polynomial features, to a standard linear approach?
2. **Options Listing:**
* Prediction.
* Interpretation.
* Prediction and Interpretation.
* None of the above.


3. **Correct Answer Indication:** **Prediction and Interpretation.**
4. **Explanation/Rationale:** Incorporating non-linear terms allows standard linear models to capture complex non-linear trends, which significantly improves predictive accuracy while maintaining the interpretability of regression coefficients and feature interactions.

---

###### Question 8

1. **Question Restatement:** A testing data could be also reffered to as:
2. **Options Listing:**
* Training data
* Unseen data
* Corroboration data
* None of the above


3. **Correct Answer Indication:** **Unseen data**
4. **Explanation/Rationale:** Testing data is withheld from the model during training, making it "unseen data" that mimics real-world inference scenarios.

---

###### Question 9

1. **Question Restatement:** Select the correct syntax to obtain the data split that will result in a train set that is 60% of the size of your available data.
2. **Options Listing:**
* X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.6)
* X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.4)
* X_train, y_test = train_test_split(X, y, test_size=0.40)
* X_train, y_test = train_test_split(X, y, test_size=0.6)


3. **Correct Answer Indication:** **X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.4)**
4. **Explanation/Rationale:** In `scikit-learn`'s `train_test_split`, setting `test_size=0.4` allocates 40% of the data to the test set, leaving 60% for the training set. The function unpacks into four outputs: `X_train`, `X_test`, `y_train`, and `y_test`.

---

###### Question 10

1. **Question Restatement:** What is the correct sklearn syntax to add a third degree polynomial to your model?
2. **Options Listing:**
* polyFeat = polyFeat.add(degree=3)
* polyFeat = polyFeat.fit(degree=3)
* polyFeat = PolynomialFeatures(degree=3)
* polyFeat = polyFeat.transform(degree=3)


3. **Correct Answer Indication:** **polyFeat = PolynomialFeatures(degree=3)**
4. **Explanation/Rationale:** In `scikit-learn`, `PolynomialFeatures` is a transformer class located under `sklearn.preprocessing`. Creating a 3rd-degree polynomial feature transformer is done by instantiating `PolynomialFeatures(degree=3)`.
