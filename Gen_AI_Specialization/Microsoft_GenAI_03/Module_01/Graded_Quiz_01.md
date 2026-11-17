## Microsoft: Working with Large Language Models using Azure

### Graded Quiz: LLM Fundamentals and Prompt Engineering

---

### Question 1

An LLM successfully interprets the sentence: "The document, which was reviewed by the legal team on Tuesday, was approved." The model correctly understands that "approved" refers to the "document," not the "team" or "Tuesday." What component of the Transformer architecture is primarily responsible for establishing this long-range contextual link? Select the best answer.

* **A)** The self-attention mechanism
* **B)** The feed-forward network
* **C)** The layer normalization component
* **D)** The positional encoding layer

**Correct Answer:** **A) The self-attention mechanism**

> **Explainer:** The self-attention mechanism calculates relationships and relevance scores between all words in an input sequence regardless of their distance, allowing the model to establish long-range contextual dependencies—such as connecting "approved" back to "document". The feed-forward network processes token representations individually, layer normalization stabilizes training, and positional encodings inject sequence order.
> 
> 

---

### Question 2

An LLM encounters a rare word like "decentralization." To process it effectively, the model's tokenizer breaks it down into common components like `["de", "central", "ization"]`. This method allows the model to understand the structure of new words and manage a vast vocabulary. What is the technical term for these components created by the tokenizer? Select the best answer.

* **A)** Graphemes
* **B)** Sub-word tokens
* **C)** Morphemes
* **D)** Lexemes

**Correct Answer:** **B) Sub-word tokens**

> **Explainer:** Tokenizers break raw text into smaller chunks called sub-word tokens (e.g., using algorithms like Byte-Pair Encoding or WordPiece). This enables LLMs to process unfamiliar words efficiently without requiring an infinitely large vocabulary dictionary. Graphemes refer to written symbols/letters, morphemes are linguistics units of meaning, and lexemes are base dictionary forms.
> 
> 

---

### Question 3

A user submits the prompt "Write a short story about a robot who discovers music." For the model to process this request, it must first translate the text into a format that captures the semantic meaning of the words. Which of the following operations is responsible for converting the individual text units of the prompt into meaningful numerical vectors? Select the best answer.

* **A)** The application of positional encodings to the input sequence
* **B)** The tokenization of the prompt into a sequence of sub-word units
* **C)** The embedding of each token into a high-dimensional vector space
* **D)** The calculation of attention weights across the entire prompt

**Correct Answer:** **C) The embedding of each token into a high-dimensional vector space**

> **Explainer:** Text embeddings map discrete tokens into dense vector representations where mathematical proximity reflects semantic meaning. Tokenization splits text into tokens, positional encoding adds position order to vectors, and attention calculates word interactions.
> 
> 

---

### Question 4

A company wants to use an LLM to act as a customer support bot. To ensure the bot's responses are consistently polite, helpful, and on-brand, the development team spends significant time crafting a detailed initial instruction set that defines the bot's persona and behavior. What is the primary purpose of this effort? Select the best answer.

* **A)** To align the model's conversational style with specific brand and service guidelines
* **B)** To confirm the model can retrieve data from the company's knowledge base
* **C)** To improve the factual accuracy of the information provided by the model
* **D)** To increase the number of user queries the model can handle simultaneously

**Correct Answer:** **A) To align the model's conversational style with specific brand and service guidelines**

> **Explainer:** System prompts and initial behavioral instructions guide the style, tone, constraints, and operational guidelines of an LLM. It does not inherent access external databases, guarantee accuracy of external facts, or impact computational capacity/concurrency.

---

### Question 5

An AI engineer wants an LLM to provide feedback on a written argument. The prompt starts with: "You are an expert debate coach with 20 years of experience. Your tone is encouraging but critical. You will analyze the following argument..." What is the primary purpose of the first sentence, "You are an expert debate coach with 20 years of experience"? Select the best answer.

* **A)** To offer the model several examples of the desired output format
* **B)** To provide the model with a direct command to perform a specific function
* **C)** To guide the model's reasoning process with a step-by-step framework
* **D)** To establish a specific persona that will guide the response's tone and style

**Correct Answer:** **D) To establish a specific persona that will guide the response's tone and style**

> **Explainer:** Role prompting (assigning a persona) primes the model to activate patterns, vocabulary, and perspectives aligned with that identity, helping steer the tone, expertise level, and framing of the response.

---

### Question 6

A developer is building a tool that uses an LLM to summarize meeting transcripts. To ensure the summaries are useful, the prompt is designed to explicitly ask for key action items and decisions. The instruction "Extract all assigned action items and list them with the owner's name" is included. What is the primary reason this instruction is effective for guiding the LLM? Select the best answer.

* **A)** It reduces the computational resources needed to process the transcript
* **B)** It provides a specific command and defines a clear structure for the output
* **C)** It gives the model a complete example of the desired summary format
* **D)** It encourages the model to infer the most important parts of the conversation

**Correct Answer:** **B) It provides a specific command and defines a clear structure for the output**

> **Explainer:** Providing explicit, task-specific instructions removes ambiguity and clearly defines the expected output format, yielding higher quality and more predictable results compared to open-ended requests.

---

### Question 7

A user receives a generic poem from an LLM. To improve the output, they change their request to include specific structural rules, such as "write a 14-line sonnet in iambic pentameter." This cycle of testing and improving the user's request is a key part of what practice? Select the best answer.

* **A)** Guiding the model's response by providing several examples of the desired output
* **B)** Customizing the model by fine-tuning it on a specialized poetry dataset
* **C)** Applying an iterative design process to the input instructions
* **D)** Modifying the model's generation settings, such as temperature, for different results

**Correct Answer:** **C) Applying an iterative design process to the input instructions**

> **Explainer:** Prompt engineering is an inherently iterative design process where prompts are continually tested, evaluated, and refined to achieve the desired response quality and formatting.

---

### Question 8

An AI engineer is describing their model to a stakeholder, explaining that it is built from many identical layers stacked together. Each layer processes the entire input sequence at once using a self-attention mechanism and a feed-forward network. This design of stacked, identical processing layers is the defining characteristic of which foundational model architecture? Select the best answer.

* **A)** The Generative Pre-trained (GPT) model family
* **B)** The Encoder-Decoder framework
* **C)** The Bidirectional Encoder (BERT) model family
* **D)** The Transformer architecture

**Correct Answer:** **D) The Transformer architecture**

> **Explainer:** The Transformer architecture is defined by stacked processing blocks that combine self-attention mechanisms with feed-forward layers to process entire input sequences in parallel. GPT and BERT are specific instances/variations built upon this underlying architecture.

---

### Question 9

A user provides an LLM with the first half of a sentence: "To be or not to be, that is the..." and the model finishes it with "question." The model's ability to continue the user's input is a core capability. What is this specific task called? Select the best answer.

* **A)** Sequential forecasting
* **B)** Contextual extrapolation
* **C)** Generative inference
* **D)** Text completion

**Correct Answer:** **D) Text completion**

> **Explainer:** Text completion (or sequence completion) is the fundamental autoregressive task performed by language models: predicting and appending subsequent tokens to fulfill a given input prompt.
> 
> 

---

### Question 10

A hospital is exploring using an LLM to quickly summarize long patient histories into concise notes for doctors before a consultation. This would help doctors get the key information they need more efficiently. What significant potential benefit of LLMs in specialized fields does this represent? Select the best answer.

* **A)** The capacity to predict future health risks from historical patterns
* **B)** The capability to verify the factual accuracy of clinical records
* **C)** The ability to synthesize and distill vast amounts of domain-specific information
* **D)** The function of automating administrative tasks like patient scheduling

**Correct Answer:** **C) The ability to synthesize and distill vast amounts of domain-specific information**

> **Explainer:** LLMs excel at processing long unstructured texts, identifying relevant details, and distilling complex information into clear, structured summaries to support decision-making in specialized domains.
