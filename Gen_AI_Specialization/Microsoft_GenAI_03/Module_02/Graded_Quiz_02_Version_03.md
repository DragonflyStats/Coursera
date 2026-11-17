## Microsoft: Working with Large Language Models using Azure

### RAG Pipeline Design, Optimization, and Evaluation Assessment

* **Core Principles**: Responsible AI deployments rely on foundational pillars including **Accountability**, **Transparency**, **Fairness**, **Privacy & Security**, and **Reliability & Safety**.


* **RAG & Vector Search**: Retrieval-Augmented Generation (RAG) grounds language models in external knowledge bases using **data chunking**, **vector stores**, and **Azure AI Search**, ensuring answers are supported by retrieved context (*faithfulness*).


* **Prompt Engineering & Reasoning**: Effective prompt structures utilize clear instructions, background context, **persona patterns**, **Chain-of-Thought (CoT)** reasoning, and **few-shot examples** to guide model outputs and minimize ambiguity.


* **Customization & Evaluation**: Choosing between prompt engineering, RAG, or supervised fine-tuning depends on whether the goal is dynamic factual retrieval, behavioral alignment, or brand voice consistency.

---

### Question 1

A financial services firm needs an AI assistant that can analyze and answer questions about real-time market data reports. What is the primary purpose of implementing a RAG pipeline for this assistant? Select the best answer.

* **A)** To modify the model's internal knowledge by retraining it on new data
* **B)** To improve the model's core reasoning and analytical capabilities
* **C)** To provide the AI model with access to external information for its responses **(Correct Answer)**
* **D)** To fine-tune the model on proprietary financial terminology and concepts

> **Explainer:** Retrieval-Augmented Generation (RAG) connects an LLM to external, dynamic knowledge sources, enabling it to access and ground its responses in up-to-date data without requiring model retraining.

---

### Question 2

In a RAG pipeline designed for a medical research database, documents are converted into numerical representations that capture their semantic meaning. Which component is responsible for storing and efficiently searching these representations? Select the best answer.

* **A)** The Embedding Model
* **B)** The Language Model Cache
* **C)** The Semantic Indexer
* **D)** The Vector Store **(Correct Answer)**

> **Explainer:** The vector store is purpose-built to store high-dimensional numerical vector embeddings and execute fast, efficient similarity searches across them.

---

### Question 3

An organization is building a RAG system using its extensive archive of research papers. To make the information searchable, each paper is first segmented into smaller parts before being converted into vector embeddings. What is this segmentation process called? Select the best answer.

* **A)** Data chunking **(Correct Answer)**
* **B)** Semantic indexing
* **C)** Vector structuring
* **D)** Model fine-tuning

> **Explainer:** Data chunking divides large documents into smaller, logically coherent segments so they can be effectively embedded, indexed, and retrieved.

---

### Question 4

A developer is building a RAG pipeline on Microsoft Azure to answer questions from a company's internal SharePoint site. Which Azure service is primarily used to index the SharePoint documents and make them searchable for the retriever component? Select the best answer.

* **A)** Azure Functions
* **B)** Azure OpenAI Service
* **C)** Azure AI Language
* **D)** Azure AI Search **(Correct Answer)**

> **Explainer:** Azure AI Search provides the core enterprise indexing, data ingestion, and querying infrastructure required to power the retrieval phase of a RAG architecture.

---

### Question 5

When creating a basic RAG pipeline in Azure, what is the first step to connect an external data source, such as a collection of PDF files? Select the best answer.

* **A)** Creating a system prompt in the orchestration logic to guide the model
* **B)** Deploying an Azure OpenAI model to an endpoint for text generation
* **C)** Developing a data chunking and embedding function for the source files
* **D)** Ingesting and indexing data into a service like Azure AI Search **(Correct Answer)**

> **Explainer:** The fundamental first step in establishing a RAG pipeline is ingesting and indexing external source documents into a search service so the retriever can query them.

---

### Question 6

In a RAG pipeline built with Azure services, the retriever component queries Azure AI Search and gets back relevant data chunks. How does the generator (an Azure OpenAI model) use this information? Select the best answer.

* **A)** It compares retrieved data against its knowledge to select the best source.
* **B)** It incorporates the retrieved data as a primary source for its response. **(Correct Answer)**
* **C)** It adds the retrieved data to its training set to improve future performance.
* **D)** It reranks the retrieved data chunks based on the user's original prompt.

> **Explainer:** The generator takes the retrieved data chunks and incorporates them as contextual input to synthesize an accurate response grounded in the external source material.

---

### Question 7

An advanced RAG pipeline first performs a quick search to get a broad set of potentially relevant documents. Then, a second step is applied to intelligently sort this set, ensuring the most useful information is at the top. What is this sorting step known as? Select the best answer.

* **A)** Reranking **(Correct Answer)**
* **B)** Data Embedding
* **C)** Context Compression
* **D)** Initial Retrieval

> **Explainer:** Reranking applies a secondary, high-precision scoring model to reorder retrieved documents, ensuring the most contextually relevant information is positioned at the top of the context window.

---

### Question 8

A legal research RAG tool must find documents containing a specific case name and documents discussing similar legal concepts. To achieve this, the retrieval process uses both term-matching and semantic similarity. What is this combined retrieval strategy known as? Select the best answer.

* **A)** Hybrid search **(Correct Answer)**
* **B)** Semantic search
* **C)** Multi-modal search
* **D)** Singular search

> **Explainer:** Hybrid search combines traditional keyword/term-matching search (for precise names and exact terminology) with vector-based semantic search (for conceptual similarity).

---

### Question 9

A critical requirement for a medical RAG chatbot is that its answers must be based strictly on the provided medical literature and not on the LLM's general knowledge. When testing the chatbot, what quality ensures this requirement is met? Select the best answer.

* **A)** Generation faithfulness **(Correct Answer)**
* **B)** Retrieval recall
* **C)** Contextual relevance
* **D)** Answer similarity

> **Explainer:** Generation faithfulness (or groundedness) evaluates whether the generated output is factually derived entirely from the retrieved source text, preventing hallucinations or ungrounded claims.

---

### Question 10

A team is evaluating their RAG pipeline and wants to know how much of the information retrieved was actually useful for forming the final answer. What metric are they trying to measure? Select the best answer.

* **A)** Context precision **(Correct Answer)**
* **B)** Answer relevance
* **C)** Answer faithfulness
* **D)** Context recall

> **Explainer:** Context precision measures the proportion of retrieved documents that were actually relevant and useful for the generator, helping identify noisy or irrelevant search results.
