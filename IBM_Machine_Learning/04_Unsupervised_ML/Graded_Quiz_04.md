Here are the correct answers and explanations for all 5 questions on **Principal Component Analysis (PCA)** and **Singular Value Decomposition (SVD)**:

---

### 1. Question 1

**Select the option that best completes the following sentence: For data with many features, principal components analysis...**

* **Correct Answer:** **generates new features that are linear combinations of the original features.**
* **Explanation:** PCA does not simply select or drop raw columns; instead, it creates a new set of orthogonal (uncorrelated) features called principal components, where each component is a weighted linear combination of the original variables. (And when reducing dimensionality by keeping only the top $k$ components, some minor variance/information is intentionally discarded.)



---

### 2. Question 2

**Which option correctly lists the steps for implementing PCA in Python?**

* **Correct Answer:** **2, 4, 1, 3**
* **Explanation:**
1. **Scale the data (2):** PCA is sensitive to feature scales, so features must first be standardized (e.g., via `StandardScaler`).


2. **Define a PCA object (4):** Instantiate `pca = PCA()`.


3. **Fit PCA to data (1):** Call `pca.fit(X_scaled)` to compute the principal components and explained variance.


4. **Determine the desired number of components based on total explained variance (3):** Inspect `np.cumsum(pca.explained_variance_ratio_)` (e.g., via a scree/cumulative variance plot) to decide how many components are needed to retain a target percentage of variance (such as 90% or 95%).





---

### 3. Question 3

**Given the following matrix for lengths of singular vectors, how do we rank the vectors in terms of importance?**


$$\begin{bmatrix} 11 & 0 & 0 & 0\\ 0 & 3 & 0 & 0\\ 0 & 0 & 2 & 0\\ 0 & 0 & 0 & 1 \end{bmatrix}$$

* **Correct Answer:** **$v_1, v_2, v_3, v_4$**
* **Explanation:** In Singular Value Decomposition ($A = U \Sigma V^T$), the diagonal entries of $\Sigma$ ($11, 3, 2, 1$) are the singular values corresponding to the singular vectors $v_1, v_2, v_3, v_4$. Because singular values represent the magnitude/variance captured along each respective direction, the vectors are ranked in descending order of their singular values: $v_1$ ($11$) > $v_2$ ($3$) > $v_3$ ($2$) > $v_4$ ($1$).

---

### 4. Question 4

**Given two principal components $v_1, v_2$, let's say that feature $f_1$ contributed $0.15$ to $v_1$ and $0.25$ to $v_2$. Feature $f_2$ contributed $-0.11$ to $v_1$ and $0.4$ to $v_2$. Which feature is more important according to their total contribution to the components?**

* **Correct Answer:** **$v_2$ because $\vert{}-0.11\vert{} + \vert{}0.4\vert{} > \vert{}0.15\vert{} + \vert{}0.25\vert{}$** *(Note: This option contains a minor typo in the quiz bank writing "$v_2$" instead of "$f_2$", as it compares $f_2$'s loadings $\vert{}-0.11\vert{} + \vert{}0.4\vert{} = 0.51$ against $f_1$'s loadings $\vert{}0.15\vert{} + \vert{}0.25\vert{} = 0.40$.)*
* **Explanation:** In PCA loadings, the sign ($+$ or $-$) indicates the direction of correlation with the component, whereas the **magnitude (absolute value)** measures the strength of contribution. Taking absolute values gives $\vert{}-0.11\vert{} + \vert{}0.40\vert{} = 0.51$ for $f_2$, which is greater than $\vert{}0.15\vert{} + \vert{}0.25\vert{} = 0.40$ for $f_1$.

---

### 5. Question 5

**(True/False) In PCA, the first principal component represents the most important feature in the dataset.**

* **Correct Answer:** **False**
* **Explanation:** The first principal component ($PC_1$) captures the direction of maximum variance in the dataset, but it is **not** a single original feature—it is a **linear combination** of *all* original features.



---

### Answer Key Summary

| Question | Correct Answer |
| --- | --- |
| **Question 1** | **generates new features that are linear combinations of the original features.**

 |
| **Question 2** | **2, 4, 1, 3** |
| **Question 3** | **$v_1, v_2, v_3, v_4$** |
| **Question 4** | **$v_2$ because $\vert{}-0.11\vert{} + \vert{}0.4\vert{} > \vert{}0.15\vert{} + \vert{}0.25\vert{}$** |
| **Question 5** | **False** |
