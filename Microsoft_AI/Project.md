### Overview
Welcome to the culmination of your learning journey! In this project, you will integrate MLOps best practices with Responsible AI principles to create a robust, automated workflow for deploying a classification model. You will utilize Azure DevOps for CI/CD and Azure Machine Learning for model management and deployment, specifically incorporating the Responsible AI Dashboard Components as a crucial quality gate.

### Activity goals
By completing this activity, you will:

Establish a private version-controlled classification project in Github with pre-configured scaffolding.

Use VS Code for:

* Pushing code to a private repo in Github 

* Editing a yaml file to specify in stages how this code should run in Azure Pipelines

* Implement a Continuous Integration (CI) stage in Azure DevOps for automated custom environment creation, data asset creation (local datasets uploaded to Azure ML as data assets), training and registration of the classification model. 

* Integrate the Responsible AI Dashboard Components as a quality gate within the CI stage ensuring the newly trained and registered model adheres to ethical standards.

* Implement a Continuous Deployment (CD) stage in Azure DevOps for automated endpoint creation, model deployment to the endpoint, and deployment monitoring.

* Document your complete MLOps design, focusing on the Responsible AI safety measures implemented.

* Practice Mode: This practice is designed to provide you with feedback to guide your learning and prepare you for graded assignments.

* Navigation: Select section headings to expand content (arrow points down to make content visible).


-------------------------

### Scenario
You are an AI Engineer at Tech Innovators Ltd where one of its customers, a university, wants a model to aid with the college admissions process. Your company has already developed the code to train the classification model for College Admissions, which predicts whether to "Don’t Accept” or "Accept” an applicant based on features like GPA, SAT, Essays, and Extracurriculars.

Because Tech Innovators Ltd already has the necessary code to create everything in Azure, they want to now encompass the code in an MLOps pipeline. Also, within this pipeline they want to use the Responsible AI dashboard components to act as a mandatory Responsible AI assessment (Gate) to ensure the trained model maintains fairness, transparency, and safety, before deployment.

### Prerequisites
A GitHub account

VS Code installed

An active Azure subscription

Git installed locally on your computer

An existing Azure DevOps organization 

An existing Azure Machine Learning workspace 

Downloaded the College-Admissions-Model zip file below

An existing Compute Cluster 

The recommended VM Size is Standard_D4ds_v4
