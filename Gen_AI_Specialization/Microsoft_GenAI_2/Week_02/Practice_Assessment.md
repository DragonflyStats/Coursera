# Microsoft: Core Generative Models and Techniques

## Practice Assignment: Basic Sequential Data Generation

---

### Overview

In this practice hands-on activity, you will get your first experience with an autoregressive model in Azure. You will use a model called **TimeGEN-1** to generate a sequence of data using the pretrained model without any special adjustments. This establishes a baseline performance to measure all future improvements against.

#### Activity Goals

* Run a pre-trained autoregressive model in Azure AI Foundry.
* Provide a real-world sequential dataset as input to the model.
* Generate a new forecast based on the input.
* Analyze the model's output to understand its baseline performance.

---

### Scenario

Imagine you are an AI Engineer at TechForecast, a company that provides predictive analytics. Your team is exploring AI models to forecast future passenger counts for your aviation clients. Before building a complex solution, you need to understand the basic capabilities of the TimeGEN-1 model by providing historical flight data and evaluating its raw forecast output.

### Prerequisites

* Access to an active Azure account.
* Download the **Basic sequential data generation** ZIP file.

---

### Step-by-Step Instructions

#### 1. Setup and Deployment in Azure AI Foundry

1. Open your browser and go to `ai.azure.com` to access the Foundry Home Screen.
2. Sign in with your Azure account.
3. Select **Create new**, then select **AI hub resource**. In the **Create a new project** window, enter:
* **Project name:** `timegenproject`
* **Hub:** `myhub`


4. Under **Advanced options**:
* **Subscription:** Choose your Azure Subscription.
* **Region:** Choose your Region (e.g., East US 2).
* **Resource Group:** Automatically filled (`rg-autoregressive-project1`).
* **AI Foundry or Azure OpenAI:** Automatically filled based on your Foundry Resource.


5. Select **Create** to initialize your hub and project.
6. Navigate to the project's **Overview** page, go to the **Model Catalog**, search for **TimeGEN-1**, and select it.
7. Select **Continue**, then click **Subscribe and Deploy** to launch a dedicated serverless endpoint.
8. Accept the default deployment name and click **Deploy**.
9. Once deployment finishes, note your **Target URI** and **Key** under the Endpoint category.

#### 2. Environment Configuration in VS Code

1. Open VS Code and open the downloaded **Basic sequential data generation** folder.
2. Create a virtual environment called `autoenv`.
3. Open the `.env` template file, copy your Target URI and Key from Azure AI Foundry, and paste them into their respective placeholders (`base_url` and `api_key`).
4. Review the `air_passengers.csv` dataset, which shows monthly international airline passenger counts (in thousands) from 1949 to 1959. Your objective is to forecast the first 6 months of 1960 and compare them against actual values in `forecast_review.csv`.

#### 3. Running the Jupyter Notebook (`forecasting.ipynb`)

1. **Install Dependencies:** Install required libraries (`nixtla`, `pandas`, `matplotlib`, `dotenv`).
2. **Import Dependencies:** Load libraries and secure environment variables.
3. **Connect to TimeGEN-1:** Initialize a `nixtla_client` object using your stored credentials.
4. **Load and Explore Dataset:** Convert `air_passengers` into a dataframe (`air_dataset`) and visualize the time-series line graph.
5. **Generate Forecast:** Run the `.forecast()` method with:
* `df`: set to `air_dataset`
* `h`: forecast horizon set to `6` (or `12` for a full-year forecast)
* `freq`: set to `'ME'` (Month End)
* `time_col`: timestamp column name
* `target_col`: value column name


6. **View Results:** Inspect and evaluate the generated predictions against actual historical data.

---

## Practice Quiz

### Question 1

In this lab, you are instructed to create a 6-month forecast of the `air_passengers` dataset using the pretrained TimeGEN-1 model. However, what if you need to forecast 12 months ahead instead of just 6? What is the parameter you set to specify how far to forecast into the future? Select the best answer.

* **A)** The `df` parameter
* **B)** The `freq` parameter
* **C)** The `target_col` parameter
* **D)** The `h` parameter **(Correct Answer)**

> **Explainer:** The `h` parameter represents the forecast horizon, which controls the number of steps or future time periods the model will predict ahead.

---

### Question 2

You are observing the output from TimeGEN-1. The model was given historical monthly sales data that showed a steady increase over time. The generated sequence, however, shows sales figures that jump up and down randomly with no clear trend. Based on this observation, what can you conclude about the model's baseline performance for this task? Select the best answer.

* **A)** The model is not coherent and has failed to capture the underlying trend in the data. **(Correct Answer)**
* **B)** The input data was likely formatted incorrectly, as the model cannot make mistakes.
* **C)** The model has perfectly learned the seasonal patterns in the sales data.
* **D)** The model is working correctly, as autoregressive models are supposed to be creative.

> **Explainer:** When a zero-shot pretrained model produces erratic outputs that fail to reflect established historical trends, it indicates that its baseline performance without domain fine-tuning is insufficient for that specific task.

---

### Question 3

An autoregressive model like TimeGEN-1 works by looking at previous data points in a sequence to predict the next one. You have just fed it a time-series dataset of daily temperatures for the city of Seattle. How will the model most likely try to predict the temperature for tomorrow? Select the best answer.

* **A)** It will calculate the average temperature from the entire year of data.
* **B)** It will analyze the temperatures from the past several days to predict tomorrow's temperature. **(Correct Answer)**
* **C)** It will ask the user to input their best guess for tomorrow's temperature.
* **D)** It will analyze the temperature from the previous day to predict tomorrow's temperature.

> **Explainer:** Autoregressive models generate forecasts by analyzing historical sequential patterns and previous data points across a given context window to predict subsequent values.
