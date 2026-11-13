###### Summary Answer Key

1. **Segment customers by their demographics.**
2. **Supervised learning**
3. **Supervised Machine Learning**
4. **Choose the best model using only the R-squared value.**
5. **LR.predict(X_test)**
6. **ROC index**
7. **None of the above**
8. **Machine Learning is automated and requires no programming**
9. **The Sum Squared Error measures the distance between the truth and predicted values.**
10. **Housing prices**

---

###### Question 1

1. **Question Restatement:** You can use supervised machine learning for all of the following examples, EXCEPT:
2. **Options Listing:**
* Segment customers by their demographics.
* Predict the number of customers that will visit a store on a given week.
* Predict the probability of a customer returning to a store.
* Interpret the main drivers that determine if a customer will return to a store.


3. **Correct Answer Indication:** **Segment customers by their demographics.**
4. **Explanation/Rationale:** Customer segmentation typically involves finding natural groupings or patterns in unlabeled data, making it an **unsupervised learning** task (e.g., K-Means clustering). The remaining options involve predicting target variables (regression or classification) or analyzing variable importance, which rely on supervised techniques with known labels.

---

###### Question 2

1. **Question Restatement:** The autocorrect on your phone is an example of:
2. **Options Listing:**
* Unsupervised learning
* Supervised learning
* Semi-supervised learning
* Reinforcement learning


3. **Correct Answer Indication:** **Supervised learning**
4. **Explanation/Rationale:** Autocorrect models are trained on labeled paired data (e.g., misspelled sequence $\rightarrow$ target corrected word) or sequence prediction targets to learn conditional probabilities of correct text given noisy input text.

---

###### Question 3

1. **Question Restatement:** Which of the following is the type of Machine Learning that uses only data with outcomes to build a model?
2. **Options Listing:**
* Supervised Machine Learning
* Unsupervised Machine Learning
* Mixed Machine Learning
* Semi Supervised Learning


3. **Correct Answer Indication:** **Supervised Machine Learning**
4. **Explanation/Rationale:** Supervised machine learning algorithms require datasets paired with known target outcomes (labels) to train a function that maps inputs to outputs. Unsupervised learning uses unlabeled data, and semi-supervised learning uses a blend of labeled and unlabeled data.

---

###### Question 4

1. **Question Restatement:** Which among the following options does not conform to the best practice of modelling in Supervised Machine learning?
2. **Options Listing:**
* Use the cost function to fit the model.
* Choose the best model using only the R-squared value.
* Develop multiple models.
* Compare results and choose the best one.


3. **Correct Answer Indication:** **Choose the best model using only the R-squared value.**
4. **Explanation/Rationale:** Evaluating regression models relying solely on $R^2$ is bad practice because $R^2$ automatically increases or remains constant as more predictors are added—even if they add no predictive value—leading to potential overfitting. Model selection should involve out-of-sample validation metrics (such as Adjusted $R^2$, RMSE, MAE, or cross-validation).

---

###### Question 5

1. **Question Restatement:** This is the syntax you need to predict new data after you have trained a linear regression model called LR:
2. **Options Listing:**
* LR=predict(X_test)
* LR.predict(X_test)
* LR.predict(LR, X_test)
* predict(LR, X_test)


3. **Correct Answer Indication:** **LR.predict(X_test)**
4. **Explanation/Rationale:** In Python's `scikit-learn` API, trained estimator objects expose a `.predict(X)` method. For a fitted model named `LR`, the correct invocation is `LR.predict(X_test)`.

---

###### Question 6

1. **Question Restatement:** All of these options are useful error measures to compare regressions except:
2. **Options Listing:**
* SSE
* R squared
* TSS
* ROC index


3. **Correct Answer Indication:** **ROC index**
4. **Explanation/Rationale:** Sum of Squared Errors (SSE), $R^2$, and Total Sum of Squares (TSS) are fundamental metrics used to evaluate and compare continuous regression models. The Receiver Operating Characteristic (ROC) index / AUC measures classification model performance across threshold cutoffs and is not used for continuous regression evaluation.

---

###### Question 7

1. **Question Restatement:** All of the listed below are part of the Machine Learning Framework, except:
2. **Options Listing:**
* Observations
* Features
* Parameters
* None of the above


3. **Correct Answer Indication:** **None of the above**
4. **Explanation/Rationale:** Observations (data rows), Features (input variables/columns), and Parameters (weights/coefficients learned by the model) are all essential constituent components of a standard machine learning framework.

---

###### Question 8

1. **Question Restatement:** Select the option that is the most INACCURATE regarding the definition of Machine Learning:
2. **Options Listing:**
* Machine Learning allows computers to learn from data
* Machine Learning allows computers to infer predictions for new data
* Machine Learning is a subset of Artificial Intelligence
* Machine Learning is automated and requires no programming


3. **Correct Answer Indication:** **Machine Learning is automated and requires no programming**
4. **Explanation/Rationale:** Machine learning is not magic; developing, training, tuning, evaluating, and deploying machine learning pipelines requires significant programming, data engineering, feature selection, and human domain oversight.

---

###### Question 9

1. **Question Restatement:** In Linear Regression, which statement is correct about Sum Squared Error?
2. **Options Listing:**
* The Sum Squared Error measures the distance between the truth and predicted values.
* The Sum Squared Error measures the distance between the truth and the average values of the truth.
* The Sum Squared Error is a measure of the explained variation of our model.
* The Sum Squared Error measures the distance between the predicted values and the average values of the truth.


3. **Correct Answer Indication:** **The Sum Squared Error measures the distance between the truth and predicted values.**
4. **Explanation/Rationale:** Sum Squared Error ($\text{SSE} = \sum (y_i - \hat{y}_i)^2$) calculates the sum of squared differences between actual ground-truth values ($y$) and model predictions ($\hat{y}$). Total variation relative to the mean is Total Sum of Squares ($\text{TSS}$), and explained variation is Regression Sum of Squares ($\text{SSR}$).

---

###### Question 10

1. **Question Restatement:** When learning about regression we saw the outcome as a continuous number. Given the below options what is an example of regression?
2. **Options Listing:**
* A fraudulent charge
* Under certain circumstances determine if a person is a Republican or Democrat
* Customer churn
* Housing prices


3. **Correct Answer Indication:** **Housing prices**
4. **Explanation/Rationale:** Regression algorithms predict continuous real-valued numeric outcomes, such as housing prices. Predicting fraudulent vs. legitimate transactions, political party affiliation, or customer churn are discrete categorical outcomes, making them classification tasks.
