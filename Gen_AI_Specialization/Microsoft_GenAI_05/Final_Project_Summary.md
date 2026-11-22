## Project Summary

The **College-Admissions MLOps CI/CD Pipeline** exercise end-to-end builds, validates, and deploys a college admissions classification model on Azure Machine Learning (`mlw-college-admissions`) using GitHub and Azure DevOps Pipelines.

### 1. Project Architecture & Objective

* **Goal:** Automate model training, Responsible AI (RAI) gated evaluation, model registration, and Managed Online Endpoint deployment with monitoring alerts in a two-stage (**CI Stage** → **CD Stage**) Azure DevOps workflow.


* **Environment & Stack:** Python 3.11 on Microsoft-hosted `ubuntu-latest` build agents authenticating via federated service principal credentials into Azure Subscription `e204418f-8dea-4987-a9d1-fdf696a81200` (`rg-college-admissions` / `mlw-college-admissions`).



---

### 2. CI Stage: Training, Responsible AI Generation & Gated Evaluation

The Continuous Integration stage executes six sequential steps before permitting deployment:

1. **Workspace & Dataset Preparation (`1. Create/Update Azure ML Workspace` & `2. Dataset Migration`):** Connects to `mlw-college-admissions` and ensures training/evaluation data assets are registered.


2. **Model Training & Registration (`3. Model Training` & `4. Register Model`):** Trains the Random Forest classification model and registers the versioned artifact in Azure ML.


3. **Responsible AI Dashboard Pipeline (`5. Generate Responsible AI Dashboard`):** Submits an Azure ML pipeline job (`Responsible_AI_Insights_Admissions_Model`) combining dashboard initialization, feature explanations, causal analysis, and error analysis (`erroranalysis_job`).


* *Key Troubleshooting & Fixes Applied:*
* Removed the DiCE counterfactual node (`counterfactual_job`) from `responsible_ai_gate/responsible.py` after it hit the 40-minute `MaxWallClockTimeExpired` limit (`39m 51s`) and pushed the total CI job to `58m 36s` against Azure DevOps's 60-minute hosted-agent timeout. Removing that bottleneck brought step 5 down to ~11 minutes.


* Normalized status checks across `register.py`, `responsible.py`, and `responsible_ai_gate/model_analysis.py` so Python 3.11's `JobStatus.COMPLETED` enum (`"jobstatus.completed"`) evaluates cleanly instead of failing string equality checks against `"Completed"`.






4. **Automated RAI Gate (`6. RAI Gate - Analyze RAI Insights`):** Downloads `ux.json` from the completed RAI run, parses global feature importance (SHAP) and sensitive-feature distribution metrics, and gates progression to CD (`rai_pass == 'True'`).


* *Key Troubleshooting & Fix Applied:* Added multi-source download fallbacks in `responsible_ai_gate/model_analysis.py` (pipeline root → child `rai_gather_job` → direct blob retrieval from `workspaceblobstore` via `azure.storage.blob.BlobServiceClient`) when `ml_client.jobs.download` returned zero files at the pipeline root.





---

### 3. CD Stage: Managed Online Endpoint Deployment & Monitoring

Once **CI Stage** passes (~18–19 minutes total), **CD Stage** runs automatically to publish the production inference service:

1. **Endpoint Creation (`1. Create/Update Endpoint`):** Runs `model_deployment/endpoint_creation/endpoint.py` to provision a key-authenticated `ManagedOnlineEndpoint` (`admissions-endpoint348957` / `admissions-endpoint348958`).


* *Key Troubleshooting & Fixes Applied:*
* Registered the required subscription-level Azure Resource Providers (`Microsoft.Cdn`, `Microsoft.Network`, `Microsoft.PolicyInsights`, `Microsoft.ContainerInstance`, `Microsoft.ContainerRegistry`, `Microsoft.ContainerService`, `Microsoft.KubernetesConfiguration`, `Microsoft.AlertsManagement`, and `Microsoft.Relay`) via Azure Portal and Cloud Shell to clear `(SubscriptionNotRegistered)` errors.


* Deleted the `Failed` endpoint stub left over from pre-registration attempts and resolved the subsequent `uksouth` DNS soft-delete cooldown (`InferencingClientCallFailed`) by rotating the endpoint name suffix.






2. **Model Deployment & Monitoring (`2. Deploy Model to Endpoint` & `3. Configure Model Monitoring`):** Deploys the registered model onto managed compute behind the endpoint and configures Azure Monitor alerts for production health tracking.
