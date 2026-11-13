## **IBM Unsupervised Machine Learning** Graded Quiz 2

---


#### 1. Question 1

**What is the other name we can give to the L2 distance?**

* **Correct Answer:** **Euclidean Distance**


* **Explanation:** The $L_2$ norm (or $L_2$ distance) calculates the standard straight-line distance between two points in Euclidean space ($\sqrt{\sum_{i=1}^n (x_i - y_i)^2}$), whereas $L_1$ distance corresponds to Manhattan distance.



---

#### 2. Question 2 *(Updated)*

**Which of the following statements is a business case for the use of the Manhattan distance (L1)?**

* **Correct Answer:** **We use it in business cases where there is very high dimensionality.**


* **Explanation:** In high-dimensional spaces (datasets with many features), Euclidean distance ($L_2$) suffers severely from the **curse of dimensionality** because squaring coordinate differences across many dimensions causes pairwise distances to converge and lose contrast. Manhattan distance ($L_1$) sums absolute differences without squaring, preserving better relative distance discrimination between nearest and farthest neighbors when **dimensionality is very high**.

---

#### 3. Question 3

**What is the key feature for the Cosine Distance?**

* **Correct Answer:** **The Cosine Distance, which takes into acount the angle between 2 points.**


* **Explanation:** Cosine similarity and cosine distance evaluate the cosine of the angle between two multi-dimensional vectors, measuring directional orientation rather than raw vector magnitude.



---

#### 4. Question 4

**The following statement is an example of a business case where we can use the Cosine Distance?**

* **Correct Answer:** **Cosine is better for data such as text where location of occurrence is less important.**


* **Explanation:** In text mining and natural language processing (NLP), documents vary substantially in total word count. Because cosine distance compares vector direction rather than length, it accurately evaluates topical similarity regardless of document size.



---

#### 5. Question 5

**Which distance metric is useful when we have text documents and we want to group similar topics together?**

* **Correct Answer:** **Jaccard**


* **Explanation:** Jaccard distance measures dissimilarity between finite sets (such as sets of unique words across documents), making it well-suited for comparing vocabulary overlap and grouping text documents by topic.



---

### Updated Answer Key Summary

| Question | Topic / Concept | Updated Correct Answer |
| --- | --- | --- |
| **Q1** | Alternative Name for $L_2$ Distance

 | **Euclidean Distance**

 |
| **Q2** | Business Case for Manhattan Distance ($L_1$)

 | **We use it in business cases where there is very high dimensionality.**

 |
| **Q3** | Key Feature of Cosine Distance

 | **The Cosine Distance, which takes into acount the angle between 2 points.**

 |
| **Q4** | Text Mining / Vector Alignment Case

 | **Cosine is better for data such as text where location of occurrence is less important.**

 |
| **Q5** | Text Document Topic Dissimilarity Metric

 | **Jaccard**

 |

*(Note: If you also want the **DBSCAN & Hierarchical Clustering** or **PCA & SVD** question sets merged into this master solution sheet, let me know and I will combine them into a single unified reference.)*
