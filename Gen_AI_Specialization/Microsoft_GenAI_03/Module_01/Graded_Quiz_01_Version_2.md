## Microsoft: Getting Started with Generative AI in Azure

### Graded Quiz: Transformer Architecture & Advanced Prompt Engineering

---

### Question 1

An AI engineer is explaining that a Transformer-based LLM processes all words in a sentence at the same time to understand context. However, because of this parallel processing, a specific component is required to give the model information about the original word order. Which component is responsible for this? Select the best answer.

* **A)** The layer normalization component that stabilizes activations
* **B)** The positional encodings that are added to the input **(Correct Answer)**
* **C)** The feed-forward networks that process the output of each block
* **D)** The token embedding vectors that capture word meaning

> **Explainer:** Because Transformers process entire token sequences simultaneously via self-attention rather than sequentially, positional encodings are added to token embeddings to explicitly preserve word order information.

---

### Question 2

An LLM is given the text "The cat sat on the" and must determine the most likely next word. The model evaluates the existing words to calculate probabilities for all possible words that could follow. What fundamental task is the model performing to generate the next word? Select the best answer.

* **A)** Semantic context analysis
* **B)** Probabilistic vocabulary lookup
* **C)** Autoregressive token generation **(Correct Answer)**
* **D)** Conditional text infilling

> **Explainer:** Autoregressive token generation involves predicting subsequent tokens sequentially by calculating statistical probabilities across the vocabulary based on preceding context.

---

### Question 3

A user submits the prompt "Write a short story about a robot who discovers music." For the model to process this request, it must first translate the text into a format that captures the semantic meaning of the words. Which of the following operations is responsible for converting the individual text units of the prompt into meaningful numerical vectors? Select the best answer.

* **A)** The embedding of each token into a high-dimensional vector space **(Correct Answer)**
* **B)** The calculation of attention weights across the entire prompt
* **C)** The application of positional encodings to the input sequence
* **D)** The tokenization of the prompt into a sequence of sub-word units

> **Explainer:** Token embeddings map sub-word token IDs into dense, high-dimensional numerical vectors that capture semantic relationships and conceptual meanings.

---

### Question 4

Two developers are using the same LLM. Developer A gives the prompt "Summarize this article." Developer B gives the prompt "Summarize this article for a 5th grader in three bullet points." Developer B gets a much more useful response. What does this difference in outcome primarily demonstrate? Select the best answer.

* **A)** The complexity of the source article is the main factor in determining the summary's quality.
* **B)** The specificity of the instructions directly guides the model to generate a more relevant output. **(Correct Answer)**
* **C)** The model's performance on the second query was improved by the context from the first.
* **D)** The model is better trained to handle structured tasks than open-ended requests.

> **Explainer:** Clear instructional specificity—such as defining target audience and structural constraints—drastically improves output relevance by removing ambiguity.

---

### Question 5

A developer wants an LLM to generate Python code for a specific task. To guide the model, the developer provides two complete examples of similar functions before stating the request for the new function. What is the most precise term for this technique? Select the best answer.

* **A)** Zero-shot prompting
* **B)** Few-shot prompting **(Correct Answer)**
* **C)** Contextual prompting
* **D)** Instruction-based prompting

> **Explainer:** Few-shot prompting provides a limited number of concrete input-output examples directly inside the prompt to guide the model's format, style, and logic.

---

### Question 6

A user wants an LLM to draft an email but is unhappy with the overly formal tone of the first draft. In the next attempt, the user adds the instruction: "Write the email in a friendly and casual tone, as if you are talking to a colleague you know well." Which type of instruction did the user add to the prompt to achieve the desired change in the email's style? Select the best answer.

* **A)** A directive on how to structure the email's layout
* **B)** A command to focus on a specific subject matter
* **C)** An example sentence that demonstrates the preferred style
* **D)** Specifications that define the author's persona and voice **(Correct Answer)**

> **Explainer:** Specifying tone, viewpoint, relationship context, and communication style establishes an explicit persona and voice for the generated text.

---

### Question 7

An analyst uses an LLM to extract data from unstructured reports. They notice the model sometimes misses key figures. The analyst experiments by adding a line to the prompt: "Pay close attention to any numbers mentioned with currency symbols or percentages." The results improve significantly. What does this successful experiment demonstrate? Select the best answer.

* **A)** The necessity of providing examples for complex data extraction tasks
* **B)** The significant impact of adding specific, targeted details to instructions **(Correct Answer)**
* **C)** The general principle that increasing a prompt's length improves model focus
* **D)** The model's specialized training on recognizing financial data patterns

> **Explainer:** Adding targeted constraints and specific attention cues directs the model's focus toward critical data points it might otherwise overlook in unstructured text.

---

### Question 8

An AI engineer is describing their model to a stakeholder, explaining that it is built from many identical layers stacked together. Each layer processes the entire input sequence at once using a self-attention mechanism and a feed-forward network. This design of stacked, identical processing layers is the defining characteristic of which foundational model architecture? Select the best answer.

* **A)** The Generative Pre-trained (GPT) model family
* **B)** The Bidirectional Encoder (BERT) model family
* **C)** The Encoder-Decoder framework
* **D)** The Transformer architecture **(Correct Answer)**

> **Explainer:** The core Transformer architecture relies on stacked encoder and/or decoder layers powered universally by multi-head self-attention and position-wise feed-forward networks.

---

### Question 9

A student is using an online chat interface powered by an LLM for the first time. The student types a question, "What is the capital of France?", and receives the answer, "The capital of France is Paris." This simple exchange represents the most fundamental pattern of using an LLM. What is this pattern? Select the best answer.

* **A)** Executing an internal knowledge retrieval process
* **B)** Tracking the session's state for a future query
* **C)** Triggering the model's text-completion algorithm
* **D)** Engaging in a prompt and response interaction **(Correct Answer)**

> **Explainer:** At its foundational level, interacting with a conversational large language model follows a direct prompt-and-response pattern where user inputs initiate text generation.

---

### Question 10

A software company has automated the first draft of its technical documentation by using an LLM, freeing up its engineers to focus on more complex coding tasks. This allows the company to produce documentation faster and more consistently. This use case is a direct example of LLMs' impact on what? Select the best answer.

* **A)** Elevating the quality and clarity of the final technical content
* **B)** Augmenting workforce productivity by handling repetitive language tasks **(Correct Answer)**
* **C)** Enhancing the end-user experience with better support materials
* **D)** Lowering direct operational costs related to content creation

> **Explainer:** Generative AI tools augment human workflows by taking over repetitive, time-consuming drafting and formatting tasks, thereby boosting overall workforce productivity.
