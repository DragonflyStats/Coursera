## Option 1 Plan: Credit Card Fraud Detection (Kaggle)

**Dataset Profile:** 284,807 rows | 30 numerical features (`V1`–`V28`, `Amount`, `Time`) | Target: `Class` (0 = 99.83%, 1 = 0.17%)

```
Data Ingestion & Split ──► Preprocessing ──► Resampling ──► Model Training ──► Evaluation & Selection
(Stratified 80/20)        (Log & Scale)     (Train Set Only)  (Baseline vs SMOTE) (PR-AUC & Recall)

```

### 1. Project Objective & Problem Framing

* **Business Goal:** Minimize undetected fraudulent transactions (False Negatives) while maintaining an acceptable false alarm rate (False Positives) to protect operational efficiency.
* **Primary Optimization Metrics:** Precision-Recall AUC (PR-AUC), Recall (Sensitivity), and $F_2$-Score (prioritizing recall over precision). Overall Accuracy is explicitly discarded as a success metric.

### 2. Exploratory Data Analysis (EDA) & Data Preprocessing

* **Class Ratio Inspection:** Confirm the extreme $99.83\% : 0.17\%$ imbalance.
* **Feature Distribution Analysis:** Examine skewness in non-PCA features (`Amount` and `Time`).
* **Transformation & Scaling:**
* Apply log transformation ($\log(x + 1)$) to `Amount` to handle severe right-skewness.
* Standardize (`StandardScaler` / `step_normalize`) `Amount` and `Time` so all continuous variables operate on zero mean and unit variance ($\mu=0, \sigma=1$).


* **Data Partitioning:** Execute a **Stratified 80/20 Train/Test Split** to preserve the exact $0.17\%$ minority ratio in both sets.

### 3. Sampling Techniques & Modeling Experiments

* **Crucial Rule:** Apply all resampling strategies **strictly to the training partition** to prevent data leakage into the validation/test pipeline.

| Model Candidate | Baseline (Unbalanced) | Strategy 1: Resampling | Strategy 2: Resampling |
| --- | --- | --- | --- |
| **1. Logistic Regression** | Weighted Loss (`class_weight='balanced'`) | SMOTE | Tomek Links (Undersampling) |
| **2. Random Forest** | Baseline Trees | ADASYN | Random Oversampling |
| **3. XGBoost / LightGBM** | Baseline Boosted | Hybrid (SMOTE + Tomek Links) | Algorithmic (`scale_pos_weight`) |

### 4. Evaluation & Model Selection

* **Validation Strategy:** 5-fold Stratified Cross-Validation on the training set.
* **Comparative Assessment:**
* Plot Precision-Recall (PR) curves alongside standard ROC curves to demonstrate why ROC-AUC can be misleading under severe imbalance.
* Evaluate confusion matrices at default probability threshold ($p = 0.50$) vs. tuned thresholds ($p \in [0.10, 0.35]$).


* **Final Selection:** Choose the top-performing pipeline based on maximum PR-AUC and acceptable recall thresholds.

### 5. Stakeholder Findings & Limitations

* **Key Drivers:** Identify the top PCA components (e.g., `V14`, `V12`, `V10`, `V17`) driving fraud predictions using SHAP values or feature importance scores.
* **Limitations:** Masked feature names (`V1`–`V28`) limit qualitative interpretation; high extreme value sensitivity in real-time scoring environments.

---
