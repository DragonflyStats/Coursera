## Microsoft: Working with Large Language Models using Azure

### RAG Pipeline Design, Optimization, and Evaluation Assessment

---

### Question 1

An internal IT helpdesk uses an AI assistant to respond to employee inquiries. The team wants the assistant to reference a new, private knowledge base of internal policies and guides without altering the assistant's underlying AI model. Which approach is best suited for this task? Select the best answer.

* **A)** A fine-tuning approach to specialize the model with new product data
* **B)** A vector database for semantic search across the knowledge base
* **C)** A prompt engineering strategy to inject context into user queries
* **D)** A Retrieval Augmented Generation pipeline to access the knowledge base **(Correct Answer)**

> **Explainer:** RAG allows an LLM to retrieve information from a specific, external knowledge base to generate context-aware answers without needing to be retrained.

---

### Question 2

In a RAG pipeline designed for a medical research database, documents are converted into numerical representations that capture their semantic meaning. Which component is responsible for storing and efficiently searching these representations? Select the best answer.

* **A)** The Vector Store **(Correct Answer)**
* **B)** The Language Model Cache
* **C)** The Embedding Model
* **D)** The Semantic Indexer

> **Explainer:** The vector store is purpose-built to store, manage, and execute efficient similarity or semantic searches across high-dimensional vector embeddings.

---

### Question 3

A developer is setting up a RAG pipeline to work with a library of long legal contracts. To make sure the retrieval process is precise and efficient, the developer first needs to divide each contract into logical sections or paragraphs. This process is known as what? Select the best answer.

* **A)** Vectorization
* **B)** Chunking **(Correct Answer)**
* **C)** Caching
* **D)** Indexing

> **Explainer:** Chunking is the fundamental step of breaking down large texts into smaller, manageable pieces, which is critical for effective context retrieval in a RAG system.

---

### Question 4

An engineer is designing a RAG architecture in Azure. The design requires a component that can ingest data from a knowledge base, create a searchable index, and provide an API for the retriever to query. Which Azure service is the primary choice for providing this indexing and querying functionality? Select the best answer.

* **A)** Azure App Service
* **B)** Azure OpenAI Service
* **C)** Azure AI Search **(Correct Answer)**
* **D)** Azure Logic Apps

> **Explainer:** Azure AI Search is the core Azure service used for cloud search, data ingestion, indexing, and providing robust querying APIs for retrieval pipelines.

---

### Question 5

To construct a functional RAG pipeline in Azure, an engineer has a folder of text files they want the LLM to use as a knowledge source. What is the fundamental step required to connect this data to the pipeline? Select the best answer.

* **A)** Uploading the folder of files to an Azure Blob Storage account
* **B)** Indexing the content of the text files in a search service **(Correct Answer)**
* **C)** Creating a system prompt that references the file locations
* **D)** Converting the documents into a single structured format

> **Explainer:** Connecting raw documents to a RAG pipeline requires ingesting and indexing their text content within a search service so the retriever can efficiently query them.

---

### Question 6

In a RAG pipeline built with Azure services, the retriever component queries Azure AI Search and gets back relevant data chunks. How does the generator (an Azure OpenAI model) use this information? Select the best answer.

* **A)** It compares retrieved data against its knowledge to select the best source.
* **B)** It reranks the retrieved data chunks based on the user's original prompt.
* **C)** It incorporates the retrieved data as a primary source for its response. **(Correct Answer)**
* **D)** It adds the retrieved data to its training set to improve future performance.

> **Explainer:** The generator combines the user's prompt with the context provided by the retrieved data chunks to synthesize an informed, accurate response grounded in the external data.

---

### Question 7

To improve the quality of answers from a RAG system, an engineer implements a process where the top 25 initially retrieved documents are passed to a second, more precise model. This model then reorders the documents to place the most relevant ones first. What is this technique? Select the best answer.

* **A)** Reranking **(Correct Answer)**
* **B)** Query Expansion
* **C)** Data Ingestion
* **D)** Hybrid Search

> **Explainer:** Reranking involves scoring and reordering an initial set of retrieved search results using a secondary model to ensure the highest-relevance content is positioned at the top.

---

### Question 8

An engineer is optimizing a RAG pipeline's retriever. They want to make sure that it can find documents that use the same terminology as the query, as well as documents that are conceptually related but use different words. Which technique should they implement? Select the best answer.

* **A)** Applying post-retrieval reranking to improve document relevance
* **B)** Combining vector retrieval with a keyword-based search method **(Correct Answer)**
* **C)** Implementing query expansion using a language model
* **D)** Fine-tuning the embedding model on domain-specific data

> **Explainer:** Hybrid search combines keyword-based search (for exact terminology match and precision) with vector search (for conceptual and semantic relevance).

---

### Question 9

When evaluating a RAG system, a tester compares the generated answer to the source text that was retrieved. The goal is to make sure the AI did not invent any information. This evaluation focuses on which aspect of the generator's performance? Select the best answer.

* **A)** Answer relevance
* **B)** Information completeness
* **C)** Generation faithfulness **(Correct Answer)**
* **D)** Answer correctness

> **Explainer:** Generation faithfulness measures whether the generated response is strictly derived from and supported by the retrieved context, ensuring the model does not hallucinate.

---

### Question 10

An engineer is analyzing the performance of a RAG system. They notice that the retriever is fetching 10 documents, but the generator is using information from the top 2 to create its answer. This indicates a potential issue with which evaluation metric? Select the best answer.

* **A)** The faithfulness of the generated answer
* **B)** The generator's utilization of the context
* **C)** The recall of the retrieved context
* **D)** The precision of the retrieved context **(Correct Answer)**

> **Explainer:** Low context precision indicates that the retriever is fetching many irrelevant documents that are not useful or utilized by the generator, resulting in inefficient context window usage.
