## Graded Quiz: Module 3 Evaluation

---

### Question 1

When building the framework for a personalized news summarizer using Azure tools, what should be decided first? Select the best answer.

* **A)** Training a model with advanced data before choosing a task.
* **B)** Scheduling daily system maintenance windows.
* **C)** Buying advertising space for promoting the summarizer.
* **D)** Establishing which inputs and outputs the application will support. **(Correct Answer)**

> **Explainer:** Deciding input and output parameters ensures that the application meets foundational requirements and shapes the proper architectural scope before development begins.

---

### Question 2

A project requires generating custom marketing emails. Which Microsoft Foundry component provides access to the AI model that generates the natural language output?

* **A)** Azure Logic Apps
* **B)** Azure SQL Database
* **C)** The Model Catalog **(Correct Answer)**
* **D)** Azure Blob Storage

> **Explainer:** The **Model Catalog** in Microsoft Foundry is where you browse, select, and deploy the AI model that powers text generation for your application.

---

### Question 3

A news agency is preparing to launch its Microsoft Foundry-powered news summarization tool. Before rolling it out, which method provides the strongest demonstration that the model fulfills its intended task?

* **A)** Supplying articles and checking if summaries are accurate and concise. **(Correct Answer)**
* **B)** Reviewing tool samples and collecting editorial suggestions for improvements.
* **C)** Comparing summary length with the average length of published articles.
* **D)** Tracking how quickly users can locate the original article through summary links.

> **Explainer:** Testing with sample articles and reviewing summary quality ensures the tool meets its core purpose and maintains factual accuracy.

---

### Question 4

A company uses Microsoft Foundry to generate business letters. The current letters sometimes lack clear greetings or closings. Which of these actions demonstrates prompt engineering to address this issue?

* **A)** Restricting the maximum letter length to avoid unnecessary content in email drafts.
* **B)** Adjusting the prompt to add a sample greeting and closing statement in the template. **(Correct Answer)**
* **C)** Customizing output settings to keep consistent paragraph spacing in letters.
* **D)** Updating the language model’s training data to include recent business communications.

> **Explainer:** Sharing an example greeting and closing directly in the prompt via few-shot framing guides the model to include them properly in output generation.

---

### Question 5

When updating a Microsoft Foundry-powered text generator, which actions are most effective for validating its performance and ensuring its quality? *(Select all that apply)*

* **[ ]** Update documentation after a major release not on an ongoing basis.
* **[ ]** Rely on user feedback without analyzing model outputs directly.
* **[x]** **Run tests with varied input prompts and review if results match needs.** **(Correct Answer)**
* **[x]** **Fix issues found in output before wide release.** **(Correct Answer)**

> **Explainer:** Validating updates requires testing performance across diverse prompts to uncover strengths and weaknesses, combined with proactively resolving output issues prior to wide release.

---

### Question 6

A developer fine-tunes their model by adding more specialized training data. What is the goal of this action?

* **A)** To enhance the consistency and style of text generated for specific user needs.
* **B)** To improve the model’s ability to respond to real-time data updates.
* **C)** To make outputs better match the app’s subject area. **(Correct Answer)**
* **D)** To reduce the computational resources required for each output.

> **Explainer:** While style consistency can improve as a side effect, injecting specialized domain training data is aimed primarily at achieving subject-area accuracy and precise contextual matching.

---

### Question 7

A team is evaluating whether their Microsoft Foundry-based text generation app is producing suitable, high-quality content before a wider rollout. Which of the following methods would effectively help assess the quality of the application's generated responses? *(Select all that apply)*

* **[x]** **Having subject matter experts rate a sample of outputs for accuracy, relevance, and appropriateness.** **(Correct Answer)**
* **[ ]** Calculating how frequently keywords linked to the organization's core values appear in outputs.
* **[x]** **Checking that generated responses avoid prohibited topics by scanning for a list of restricted words.** **(Correct Answer)**
* **[x]** **Reviewing generated outputs against approved real examples that meet business needs.** **(Correct Answer)**

> **Explainer:** Comprehensive quality assessment leverages subject-matter expert review (bringing domain judgment automation cannot replicate), policy compliance checks against restricted word lists, and direct benchmarking against approved business examples.

---

### Question 8

What must a developer define when starting a basic text generator in Microsoft Foundry? *(Select all that apply)*

* **[x]** **The sources and formats for required input data.** **(Correct Answer)**
* **[x]** **The application's main tasks and functions.** **(Correct Answer)**
* **[ ]** The location of production server deployment.
* **[x]** **Structure for outputs such as summaries or reports.** **(Correct Answer)**

> **Explainer:** Initializing a text generator requires establishing core functional parameters, including defining main tasks, determining input data sources and formats, and specifying the expected structure for outputs.

---

### Question 9

A developer is working on enhancing the quality of a text generation application’s responses. Which approaches can support better performance during this process? *(Select all that apply)*

* **[ ]** Rely on fixed example prompts regardless of output quality.
* **[ ]** Avoid reviewing new outputs until after deployment.
* **[x]** **Update the model with examples from the intended use case for training.** **(Correct Answer)**
* **[x]** **Modify prompts to better align with user input and expected results.** **(Correct Answer)**

> **Explainer:** Performance is optimized through iterative prompt tuning and by incorporating domain-specific training examples that align closely with the intended operational use case.

---

### Question 10

How does fine-tuning a model support the performance enhancement of a text generation app? Select the best answer.

* **A)** It allows for easier scaling across multiple cloud providers.
* **B)** It regularly introduces new trends into generated content.
* **C)** It reduces the number of necessary application programming interface calls per generation.
* **D)** It adapts the model's responses to better fit the project's specific needs and context. **(Correct Answer)**

> **Explainer:** Fine-tuning permanently updates model weights so its behavior and output style consistently adapt to fit the project's unique domain needs and specific context.
