###### Summary Answer Key

1. **Geometric view**
2. **Probabilistic view**
3. **Analytical view**
4. **Features should rarely or never be scaled prior to implementing regularization.**
5. **The cost function minimum**
6. **Regularization imposes certain priors on the regression coefficients.**
7. **Analytic View**
8. **Higher lambda decreases variance, means smaller coefficients.**
9. **All of the above**
10. **The goal of Regularization is always going to be to optimize our complexity trade off, so we can minimize error on the hold-out set.**

---

###### Question 1

1. **Question Restatement:** When working with regularization, what is the view that illuminates the actual optimization problem and shows why LASSO generally zeros out coefficients?
2. **Options Listing:**
* Analytical view
* Geometric view
* Probabilistic view
* Regression view


3. **Correct Answer Indication:** **Geometric view**
4. **Explanation/Rationale:** The geometric view plots the contours of the OLS loss function alongside the constraint region of the penalty. For LASSO ($L_1$), the penalty boundary forms a diamond (polyhedron) with sharp corners on the coordinate axes. Because the elliptical loss contours typically touch the diamond at one of these axis corners, the resulting optimal coefficients are driven exactly to zero.

---

###### Question 2

1. **Question Restatement:** When working with regularization, what is the view that recalibrates our understanding of LASSO and a Ridge, as a base problem, where coefficients have particular prior distributions?
2. **Options Listing:**
* Probabilistic view
* Geometric view
* Analytical view
* Regression view


3. **Correct Answer Indication:** **Probabilistic view**
4. **Explanation/Rationale:** Under the probabilistic (Bayesian) view, regularization corresponds to finding the Maximum A Posteriori (MAP) estimate. Ridge regression ($L_2$) assumes a Gaussian prior on the model coefficients $\beta$, whereas LASSO ($L_1$) assumes a Laplace (double exponential) prior centered at zero.

---

###### Question 3

1. **Question Restatement:** When working with regularization, what is the logical view of how to achieve the goal of reducing complexity?
2. **Options Listing:**
* Geometric view
* Analytical view
* Regression view
* Probabilistic view


3. **Correct Answer Indication:** **Analytical view**
4. **Explanation/Rationale:** The analytical view formulates regularization directly through the modified loss function equation: $\text{Loss} = \text{OLS Error} + \lambda \cdot \text{Penalty}$. It logically demonstrates how penalizing the magnitude of coefficient parameters explicitly penalizes model complexity to balance the bias-variance tradeoff.

---

###### Question 4

1. **Question Restatement:** All of the following statements about Regularization are TRUE except:
2. **Options Listing:**
* Optimizing predictive models is about finding the right bias/variance tradeoff.
* Features should rarely or never be scaled prior to implementing regularization.
* We need models that are sufficiently complex to capture patterns in data, but not so complex that they overfit.
* Regularization techniques have an analytical, a geometric, and a probabilistic interpretation.


3. **Correct Answer Indication:** **Features should rarely or never be scaled prior to implementing regularization.**
4. **Explanation/Rationale:** This statement is false (and thus the correct answer to the "except" prompt). Features **must** be standardized/scaled prior to applying regularization because distance-based penalties ($L_1$ or $L_2$) are sensitive to feature scales; otherwise, features with larger units would be penalized unfairly relative to those on smaller scales.

---

###### Question 5

1. **Question Restatement:** When working with regularization and using the geometric formulation, what is found at the intersection of the penalty boundary and a contour of the traditional OLS cost function surface?
2. **Options Listing:**
* The cost function minimum
* A smaller range of coefficients
* The prior distribution of $\beta$
* A peaked density


3. **Correct Answer Indication:** **The cost function minimum**
4. **Explanation/Rationale:** In the geometric interpretation, the constrained optimization solution occurs at the point where the smallest expanding elliptical contour of the unconstrained OLS loss function first touches (intersects) the boundary of the regularized constraint region. This point represents the constrained cost function minimum.

---

###### Question 6

1. **Question Restatement:** Which statement under the Probabilistic View is correct?
2. **Options Listing:**
* Regularization imposes certain errors on the regression coefficients.
* Regularization imposes certain priors on the regression coefficients.
* Regularization uses some regression coefficients to inflate the errors.
* Regularization coefficients do not take into consideration prior probabilities.


3. **Correct Answer Indication:** **Regularization imposes certain priors on the regression coefficients.**
4. **Explanation/Rationale:** In Bayesian probability theory, adding a regularization term to a likelihood estimation is equivalent to imposing a prior probability distribution over the model parameters $\beta$ (e.g., Gaussian for $L_2$, Laplacian for $L_1$).

---

###### Question 7

1. **Question Restatement:** Increasing L2/L1 penalties force coefficients to be smaller, restricting their plausible range. This statement is part of what View?
2. **Options Listing:**
* Geometric View
* Probabilistic View
* Analytic View


3. **Correct Answer Indication:** **Analytic View**
4. **Explanation/Rationale:** The analytical view examines how the mathematical shrinkage parameter $\lambda$ directly reduces vector magnitudes of $\beta$ in the penalized loss formula, showing analytically how increasing the penalty parameter shrinks coefficient magnitudes toward zero.

---

###### Question 8

1. **Question Restatement:** What does a higher lambda term mean in Regularization technique?
2. **Options Listing:**
* Higher lambda decreases variance, means smaller coefficients.
* Higher lambda increases variance, means smaller coefficients.
* Higher lambda decreases variance, means larger coefficients.
* Higher lambda decreases prior probability.


3. **Correct Answer Indication:** **Higher lambda decreases variance, means smaller coefficients.**
4. **Explanation/Rationale:** Increasing the hyperparameter $\lambda$ increases the penalization penalty, driving coefficient values toward zero (smaller magnitudes). Shrinking model parameters simplifies the decision boundary, which reduces model variance while slightly increasing bias.

---

###### Question 9

1. **Question Restatement:** What concept/s under Probabilistic View is/are True?
2. **Options Listing:**
* We can derive the posterior probability by knowing the probability of target and the prior distribution.
* The prior distribution is derived from independent draws of a prior coefficient density function that we choose when regularizing.
* L2 (ridge) regularization imposes a Gaussian prior on the coefficients, while L1 (lasso) regularization imposes a Laplacian prior.
* All of the above


3. **Correct Answer Indication:** **All of the above**
4. **Explanation/Rationale:** Every listed statement is fundamentally correct under Bayesian interpretation: Maximum A Posteriori (MAP) estimation uses Bayes' theorem, assumes prior parameter independence, and translates $L_2$ penalties to Zero-Mean Gaussian priors and $L_1$ penalties to Zero-Mean Laplacian priors.

---

###### Question 10

1. **Question Restatement:** What statement is True?
2. **Options Listing:**
* The goal of Regularization is always going to be to optimize our complexity trade off, so we can minimize error on the hold-out set.
* By penalizing the cost function, we increase the complexity of the model.
* We reduce the complexity of the model by minimizing the error on our training set.
* Introducing Regularization will increase bias and variance.


3. **Correct Answer Indication:** **The goal of Regularization is always going to be to optimize our complexity trade off, so we can minimize error on the hold-out set.**
4. **Explanation/Rationale:** Regularization aims to manage model complexity by trading off a slight increase in training bias for a significant reduction in variance, thereby minimizing generalization error on unseen hold-out or validation datasets. Penalizing the cost function reduces (rather than increases) model complexity.
