
## Option 2 Plan: Telco Customer Churn (UCI / Kaggle)

**Dataset Profile:** 7,043 rows | 20 mixed features (demographic, service, billing) | Target: `Churn` (No = 73%, Yes = 27%)

```
Data Ingestion & Split ──► Preprocessing ──► Resampling ──► Model Training ──► Evaluation & Selection
(Stratified 80/20)        (Impute & One-Hot) (Train Set Only)  (Baseline vs SMOTE) (F1-Score & ROC-AUC)

```

### 1. Project Objective & Problem Framing

* **Business Goal:** Predict customer churn to allow the retention team to offer targeted incentives to high-risk customers before they cancel service.
* **Primary Optimization Metrics:** $F_1$-Score (balancing Precision and Recall), ROC-AUC, and Profit/Cost-weighted loss functions.

### 2. Exploratory Data Analysis (EDA) & Preprocessing

* **Quality Check:** Identify missing or blank values in continuous fields (e.g., spaces in `TotalCharges`) and impute using median values.
* **Categorical Encoding:**
* Convert binary fields (`Partner`, `Dependents`, `PhoneService`) to 0/1 indicators.
* One-Hot Encode nominal features (`InternetService`, `Contract`, `PaymentMethod`) with dummy variables.


* **Continuous Scaling:** Standardize `Tenure`, `MonthlyCharges`, and `TotalCharges`.
* **Data Partitioning:** Execute a **Stratified 80/20 Train/Test Split**.

### 3. Sampling Techniques & Modeling Experiments

| Model Candidate | Baseline (Unbalanced) | Strategy 1: Resampling | Strategy 2: Resampling |
| --- | --- | --- | --- |
| **1. Logistic Regression** | Standard Linear Baseline | Random Oversampling (ROS) | NearMiss / Cluster Centroids |
| **2. Random Forest** | Balanced Random Forest | SMOTE | ADASYN |
| **3. Gradient Boosting** | Baseline Tree Ensemble | Hybrid (SMOTE + ENN) | Algorithmic Weighting |

### 4. Evaluation & Model Selection

* **Validation Strategy:** 5-fold Stratified Cross-Validation on the training set.
* **Comparative Assessment:**
* Compare $F_1$-scores, Precision, and Recall across all sampling strategies.
* Conduct probability threshold tuning to balance retention offer costs against the customer lifetime value (CLV) saved.


* **Final Selection:** Select the model achieving the best trade-off between identifying churners ($27\%$) and minimizing wasted marketing outreach.

### 5. Stakeholder Findings & Limitations

* **Key Drivers:** Highlight top churn predictors (e.g., `Contract` type, `Tenure`, `InternetService` tier, and `PaymentMethod`).
* **Business Insights:** Quantify the financial impact of shifting short-term contract customers into long-term plans.
* **Limitations:** Static historical snapshot lack time-series dynamics (e.g., change in usage patterns over time).

---
