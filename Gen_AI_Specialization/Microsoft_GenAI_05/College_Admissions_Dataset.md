The **College Admissions Dataset** (commonly used in academic MLOps, statistical modeling, and Responsible AI tutorials, such as the UCLA IDRE / `binary.csv` benchmark dataset and its synthetic MLOps extensions) is a tabular supervised-learning dataset designed to predict whether an applicant is admitted to graduate school based on academic credentials and demographic or institutional attributes.

### Core Structure & Prediction Task

* **Task Type:** Binary classification predicting admission outcome (`admit`: `0` = not admitted, `1` = admitted).
* **Core Academic Predictors:**
* **`gre`:** Graduate Record Examination score (continuous/integer numeric feature, typically ranging up to 800 on the legacy scale).
* **`gpa`:** Undergraduate Grade Point Average (continuous numeric feature on a 4.0 scale).
* **`rank`:** Prestige tier of the applicant's undergraduate institution (ordinal categorical feature coded `1` through `4`, where `1` represents the highest prestige tier and `4` represents the lowest).


* **Sensitive & Demographic Features (MLOps / Responsible AI Extensions):**
* In Responsible AI (RAI) and fairness evaluation workflows—such as the `College-Admissions` Azure ML pipeline—the dataset is paired with demographic and sensitive attributes (such as `gender`, `race`/`ethnicity`, or socioeconomic indicators) to audit model fairness, subgroup error rates, and SHAP feature importance across protected groups.



### Typical Use Cases in Data Science & MLOps

* **Statistical Modeling:** Standard benchmark for logistic regression, generalized linear models (GLMs), and tree-based classifiers (such as Random Forests) to evaluate non-linear interactions between test scores (`gre`), grades (`gpa`), and institutional tier (`rank`).
* **Responsible AI & Fairness Auditing:** Evaluating whether automated admissions scoring exhibits disparate impact, prediction parity gaps, or disproportionate reliance on sensitive demographic features before approving a trained model for production endpoint deployment.
