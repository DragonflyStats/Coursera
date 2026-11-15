The quizzes in your notebook span two distinct domains from your Coursera coursework: **LLM Fundamentals & Prompt Engineering** and **MLOps & Responsible AI in Azure**.

---

### 1. LLM Fundamentals & Transformer Architecture

This domain covers the mathematical and architectural foundations of how Large Language Models (LLMs) process text and generate responses:

* **Core LLM Objective & Interaction:** LLMs operate as autoregressive sequence models whose fundamental task is **text completion**—calculating probability distributions over a vocabulary to predict the next token in a sequence based on preceding context.


* **Text Processing Pipeline:** Raw text prompts are first broken down by a tokenizer into manageable units called **sub-word tokens** (allowing models to handle rare or unseen words without an infinitely large dictionary), and then mapped into high-dimensional numerical vectors (**embeddings**) that capture semantic meaning.


* **Transformer Architecture:** Built from stacked, identical processing layers combining feed-forward networks with **self-attention mechanisms**. Self-attention weighs the relative importance of every token against every other token in the input simultaneously, enabling models to resolve long-range contextual dependencies and pronoun references across a sentence.


* **Model Scale & Evaluation:** Understanding how parameters (weights and biases) determine model capacity, alongside qualitative human evaluation (tone, readability, logical flow) and quantitative benchmarks.


* **Domain Application Value:** Applying LLMs to synthesize, summarize, and distill large volumes of complex, unstructured domain-specific records (such as clinical patient histories) into concise, actionable formats.



---

### 2. Prompt Engineering Strategies

This domain focuses on designing and refining input instructions to control model behavior, formatting, and reliability without altering model weights:

* **System Instructions & Behavioral Alignment:** Crafting detailed initial instructions to align a model's conversational style, tone, and boundaries with specific brand or service guidelines.


* **Role & Persona Prompting:** Assigning a specific identity or expertise level (e.g., *"You are an expert debate coach..."*) to steer the perspective, vocabulary, and tone of generated responses.


* **Explicit Commands & Output Structuring:** Providing unambiguous, task-specific directives and clear output formats (such as extracting action items into a structured list) to reduce guesswork and improve consistency.


* **Iterative Prompt Design:** Treating prompt creation as an empirical cycle of testing, evaluating outputs, and refining constraints (such as adding structural or stylistic rules) to achieve target quality.



---

### 3. MLOps Lifecycle, Versioning & CI/CD Governance

This domain covers engineering practices for automating, tracking, and safely deploying machine learning models using GitHub, Azure DevOps, and Azure Machine Learning:

* **Three-Pillar Version Control & Lineage:** Tracking **training code** (`train.py`) for full auditability and rollback, **environment dependencies** (`conda.yml`) to guarantee environment consistency and prevent deployment failures, and **training data snapshots** (`train_admissions_dataset.csv`) to ensure end-to-end reproducibility.


* **Separation of CI and CD Stages:** Decoupling **Continuous Integration (CI)** (building environments, registering data assets, training models, and versioning candidate artifacts in the Azure ML Model Registry) from **Continuous Deployment (CD)** (provisioning endpoints and serving models in production).


* **Automated Pre-Deployment Quality Gates:** Inserting mandatory validation checks between model registration and deployment so candidate models that fail performance or ethical thresholds are blocked before reaching live users.



---

### 4. Responsible AI (RAI) & Fairness Auditing

This domain addresses ethical governance, bias detection, and risk mitigation in high-stakes automated decision systems (such as college admissions):

* **Fairness & Disparate Performance Testing:** Integrating **Azure Responsible AI Dashboard** components into CI pipelines to verify that predictive performance and error rates remain consistent across sensitive demographic subgroups.


* **Preventing Real-World AI Harms:** Mitigating **allocative harm** (unfairly withholding opportunities like university admission from qualified applicants) and **quality-of-service harm** (higher error rates for underrepresented groups) to protect organizations from legal, regulatory, and reputational risk.


* **Bias Root-Cause Analysis & Remediation:** Using **Model Explanations (SHAP feature importance)** and **Error Analysis** within the Responsible AI Dashboard to diagnose when sensitive attributes (such as `Race`) exceed fairness thresholds, then auditing and remediating the underlying **Data** asset and training **Code** in a development branch (`dev`) before re-running the pipeline.
