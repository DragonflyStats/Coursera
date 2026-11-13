Here are the correct answers and explanations for all 5 questions on **DBSCAN** and **Hierarchical Clustering**:

---

### 1. Question 1

**When using DBSCAN, how does the algorithm determine that a cluster is complete and is time to move to a different point of the data set and potentially start a new cluster?**

* **Correct Answer:** **When no point is left unvisited by the chain reaction.**
* **Explanation:** DBSCAN expands a cluster outward by finding all density-reachable points within radius $\varepsilon$ of core points (a "chain reaction" of neighborhood expansions). Once every density-reachable point in that connected component has been visited and assigned to the cluster, the cluster is complete, and the algorithm moves on to another unvisited point in the dataset.

---

### 2. Question 2

**Which of the following statements correctly defines the strengths of the DBSCAN algorithm?**

* **Correct Answer:** **No need to specify the number of clusters (cf. K-means), allows for noise, and can handle arbitrary-shaped clusters.**
* **Explanation:** Unlike K-Means (which requires specifying $K$ beforehand and assumes spherical, convex clusters), DBSCAN automatically determines the number of clusters based on data density, isolates outliers as noise, and discovers complex, non-linear (arbitrary-shaped) clusters.



---

### 3. Question 3

**Which of the following statements correctly defines the weaknesses of the DBSCAN algorithm?**

* **Correct Answer:** **It needs two parameters as input, finding appropriate values of $\varepsilon$ and `n_clu` can be difficult, and it does not do well with clusters of different density.**
* **Explanation:** DBSCAN relies on two global hyperparameters—neighborhood radius ($\varepsilon$) and minimum points (`min_samples` / `n_clu`). Choosing optimal values can be challenging in high-dimensional data, and because those thresholds are fixed globally, DBSCAN struggles when clusters have widely varying densities.

---

### 4. Question 4

**(True/false) Does complete linkage refers to the maximum pairwise distance between clusters?**

* **Correct Answer:** **True**
* **Explanation:** In agglomerative hierarchical clustering, **Complete Linkage** (also known as farthest-neighbor linkage) defines the distance between two clusters as the **maximum distance** between any single data point in the first cluster and any single data point in the second cluster.

---

### 5. Question 5

**Which of the following measure methods computes the inertia and pick the pair that is going to ultimately minimize the inertia value?**

* **Correct Answer:** **Ward linkage**
* **Explanation:** **Ward's linkage** merges the pair of clusters that produces the smallest increase in total within-cluster variance—which is mathematically equivalent to minimizing the sum of squared errors (**inertia**).

---

### Answer Key Summary

| Question | Correct Answer |
| --- | --- |
| **Question 1** | **When no point is left unvisited by the chain reaction.** |
| **Question 2** | **No need to specify the number of clusters (cf. K-means), allows for noise, and can handle arbitrary-shaped clusters.** |
| **Question 3** | **It needs two parameters as input, finding appropriate values of $\varepsilon$ and `n_clu` can be difficult, and it does not do well with clusters of different density.** |
| **Question 4** | **True** |
| **Question 5** | **Ward linkage** |
