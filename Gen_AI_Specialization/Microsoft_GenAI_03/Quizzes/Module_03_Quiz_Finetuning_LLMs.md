## Microsoft: Working with Large Language Models using Azure

### Customization Strategies and Model Evaluation Assessment

---

### Question 1

A company wants to deploy an AI chatbot that communicates with a friendly, patient, and empathetic voice. The base AI model is professional but does not match this specific persona. What is the best process to make the AI chatbot consistently adopt the company's specific empathetic communication style? Select the best answer.

* **A)** Fine-tuning the AI model using a large collection of chat transcripts that demonstrate the desired brand voice. **(Correct Answer)**
* **B)** Using Retrieval-Augmented Generation (RAG) to pull answers from the company's knowledge base of approved responses.
* **C)** Creating a detailed prompt that instructs the chatbot to be friendly and empathetic in every conversation.
* **D)** Implementing a post-processing step to manually review and edit every response from the chatbot for tone.

> **Explainer:** When an application requires a consistent tone, brand voice, or persona across all interactions that cannot be reliably maintained through prompting alone, fine-tuning the model on representative conversational data is the optimal approach.

---

### Question 2

A company wants to fine-tune a model to act as a support agent for a new, highly technical software product. The goal is for the model to provide accurate, step-by-step technical solutions, not general advice. To prepare a dataset for this fine-tuning task, what is the most important requirement for the training examples? Select the best answer.

* **A)** The dataset must be sourced from private/public forums where users discuss the software and its issues.
* **B)** Each example must consist of a clear user problem paired with a verified, accurate technical solution. **(Correct Answer)**
* **C)** The dataset should be formatted as a single large document containing all the product's technical manuals.
* **D)** The dataset should include thousands of general customer service conversations to teach professionalism.

> **Explainer:** Supervised fine-tuning (SFT) requires structured training datasets composed of clear prompt-response pairs—specifically matching user problems with verified, accurate technical solutions.

---

### Question 3

A developer is using the Azure AI Studio interface to create a custom model for a marketing team. The model needs to generate ad copy in the company's specific brand voice. The developer has already prepared and validated the training dataset in the required format. After navigating to the fine-tuning section of the interface, what is the first essential step the developer must take to set up the new fine-tuning job? Select the best answer.

* **A)** Configure the cost and performance monitoring alerts for the new model.
* **B)** Deploy the new model to a production endpoint to begin A/B testing.
* **C)** Create a system prompt that defines the model's new marketing persona.
* **D)** Select a pre-trained base model that will be customized with the new data. **(Correct Answer)**

> **Explainer:** Initiating a fine-tuning job requires selecting an appropriate pre-trained foundation model (such as GPT-4o or GPT-3.5) as the starting point before uploading the training data.

---

### Question 4

A developer is reviewing the results of a fine-tuning job. The training loss decreased steadily, and the validation loss also decreased and then stabilized. The model performs well on both the validation set and a separate, unseen test set. What does this successful outcome indicate about the fine-tuning process? Select the best answer.

* **A)** The base model was accurate and efficient in defining the task.
* **B)** The model has successfully learned to generalize the task. **(Correct Answer)**
* **C)** The model has successfully memorized the training dataset.
* **D)** The fine-tuning job was completed at a low computational cost.

> **Explainer:** Steady decreases in both training and validation loss followed by stable performance on unseen test data indicate that the model has successfully learned underlying patterns and generalized the task rather than memorizing (overfitting) the training set.

---

### Question 5

A tech company fine-tuned a model to generate Python code from natural language descriptions. The goal was to improve accuracy and adherence to the company's coding style guide compared to the base model. What is the best way to determine if the fine-tuning achieved its goal? Select the best answer.

* **A)** Give both the fine-tuned model and the base model the same set of new programming tasks and have developers score the outputs. **(Correct Answer)**
* **B)** Evaluate the fine-tuned model's output on a new set of tasks without comparing it to the base model.
* **C)** Make sure that the fine-tuned model can perfectly replicate the code examples from its training dataset.
* **D)** Rerun the validation set through the fine-tuned model to get a final performance score and have a team member review the output.

> **Explainer:** Comparative evaluation (side-by-side testing of both the fine-tuned model and the base model against fresh, unseen programming tasks) provides an objective measure of the actual performance gains achieved through fine-tuning.

---

### Question 6

A financial advisory firm wants an AI tool to help its analysts generate client-facing investment summaries. These summaries must be written in the firm's formal, data-driven communication style and must also incorporate the latest, real-time performance data for various investment funds. Which integration strategy would best meet both the stylistic and data requirements for this task? Select the best answer.

* **A)** Using fine-tuning on a dataset of past reports that includes financial data.
* **B)** Developing a new large language model using the firm's historical data.
* **C)** Using a RAG pipeline to access the financial data.
* **D)** Using a hybrid approach of fine-tuning and RAG pipeline. **(Correct Answer)**

> **Explainer:** When an application demands both stylistic adaptation (tone and brand voice via fine-tuning) and access to dynamic, frequently changing external facts (via Retrieval-Augmented Generation), a hybrid approach is required.

---

### Question 7

A large corporation is building an internal IT helpdesk bot. The bot needs to correctly understand and use the company's unique internal acronyms and software names. It must also provide solutions based on a knowledge base of troubleshooting guides that is updated daily by the IT team. Which approach would be most successful for creating an IT helpdesk bot that understands internal jargon and provides current solutions? Select the best answer.

* **A)** Data pre-processing: Create a script that replaces all internal acronyms in a user's query with their full names before sending it to a base model that uses RAG.
* **B)** Fine-tuning: Re-train the model every night on a dataset that includes both a glossary of jargon and the latest troubleshooting guides.
* **C)** A hybrid approach: Fine-tune the model to learn the internal jargon and acronyms, and use RAG to access the dynamic knowledge base of troubleshooting guides. **(Correct Answer)**
* **D)** RAG: Use RAG to pull information from two sources: a glossary of terms and the troubleshooting knowledge base.

> **Explainer:** Fine-tuning effectively teaches a model specialized internal vocabulary and jargon, while RAG efficiently handles dynamic knowledge bases that update daily without requiring constant model retraining.

---

### Question 8

A company has fine-tuned a model to create a more helpful and on-brand customer service chatbot. They have defined "helpful" as providing accurate solutions and "on-brand" as being friendly and professional. What is the most robust method for evaluating whether the new chatbot meets these defined business goals? Select the best answer.

* **A)** Conduct a blind comparison where human reviewers rate responses from both the new and base models. **(Correct Answer)**
* **B)** Measure the average response time of the new chatbot to make sure that it is faster than the old one.
* **C)** Calculate the final validation accuracy reported at the end of the fine-tuning job.
* **D)** Confirm that the new chatbot correctly answers all the questions from its training dataset.

> **Explainer:** Qualitative success criteria like helpfulness, friendliness, and brand alignment are best evaluated through human review and blind comparative testing (A/B testing) against baseline models.

---

### Question 9

A healthcare company fine-tuned an LLM to summarize patient-doctor conversations. The analysis reveals that the summaries are generally accurate but frequently omit details about prescribed medication dosages. What is the most probable cause for this recurring omission that should be investigated first? Select the best answer.

* **A)** The examples in the training data lacked consistent and explicit mentions of medication dosages. **(Correct Answer)**
* **B)** The model has lost its ability to recognize medical terminology.
* **C)** The base model was too small to handle the complexity of detailed medical information.
* **D)** The prompts used for testing did not specifically ask the model to include medication dosages in the summary.

> **Explainer:** If a fine-tuned model consistently omits specific categories of information (such as dosage details), it typically reflects gaps or inconsistent patterns in the training data examples.

---

### Question 10

A news organization wants to deploy an AI assistant that can write daily summaries of world events. It is absolutely important that these summaries include information from articles and reports published within the last hour to be considered current. According to the strategic decision framework, which approach should the organization prioritize to make sure that the AI's summaries are always based on the most up-to-the-minute information? Select the best answer.

* **A)** Fine-tune the model every hour on a new dataset of the latest news articles.
* **B)** Implement a RAG pipeline that continuously indexes newly published articles. **(Correct Answer)**
* **C)** Select a base model with the most recent knowledge cut-off date available.
* **D)** Fine-tune the model on a large, static dataset of historical news to teach it a journalistic style.

> **Explainer:** Rapidly updating information requires Retrieval-Augmented Generation (RAG) backed by continuous data ingestion and indexing, as fine-tuning models is neither fast nor cost-effective for real-time dynamic facts.
