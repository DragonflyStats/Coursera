## Microsoft: Working with Large Language Models using Azure

### RAG Pipeline Design, Optimization, and Evaluation Assessment

---

### Question 1

A company wants its internal chatbot to answer employee questions using the latest company policy documents, not just its pre-trained knowledge. Which approach allows the chatbot to use these specific, up-to-date documents? Select the best answer.

* **A)** Developing a semantic search engine to index and retrieve relevant document sections
* **B)** Generating and storing summaries of all documents for the model to access
* **C)** Using a Retrieval-Augmented Generation (RAG) pipeline to ground the model **(Correct Answer)**

* **D)** Fine-tuning the base model by including all policy documents in its training data

> **Explainer:** A RAG pipeline is designed to ground a large language model (LLM) in external, specific data sources, ensuring its responses are current and contextually accurate.
> 
> 

---

### Question 2

An e-commerce platform uses a RAG pipeline to power its product recommendation engine. When a user searches for an item, the system needs to find semantically similar products. Which component holds the product data as vector embeddings to facilitate this search? Select the best answer.

* **A)** A document store holding raw product descriptions
* **B)** A relational database using keyword search
* **C)** A large language model's context window
* **D)** A specialized database optimized for vector search **(Correct Answer)**


> **Explainer:** The vector store indexes the numerical vector embeddings of the products, allowing the retriever to find items with similar semantic meaning.
> 
> 

---

### Question 3

Before documents can be stored in a vector database for a RAG pipeline, they must be broken down into smaller, manageable pieces. What is this essential preprocessing step called? Select the best answer.

* **A)** Semantic representation
* **B)** Content canonicalization
* **C)** Data chunking **(Correct Answer)**

* **D)** Vector structuring

> **Explainer:** Data chunking is the process of dividing large documents into smaller segments to facilitate efficient embedding, indexing, and retrieval.
> 
> 

---

### Question 4

An engineer is designing a RAG architecture in Azure. The design requires a component that can ingest data from a knowledge base, create a searchable index, and provide an API for the retriever to query. Which Azure service is the primary choice for providing this indexing and querying functionality? Select the best answer.

* **A)** Azure OpenAI Service
* **B)** Azure Logic Apps
* **C)** Azure AI Search **(Correct Answer)**

* **D)** Azure App Service

> **Explainer:** Azure AI Search provides the core indexing and querying capabilities needed to serve as the retrieval engine for a RAG pipeline in Azure.
> 
> 

---

### Question 5

When creating a basic RAG pipeline in Azure, what is the first step to connect an external data source, such as a collection of PDF files? Select the best answer.

* **A)** Developing a data chunking and embedding function for the source files
* **B)** Deploying an Azure OpenAI model to an endpoint for text generation
* **C)** Ingesting and indexing data into a service like Azure AI Search **(Correct Answer)**

* **D)** Creating a system prompt in the orchestration logic to guide the model

> **Explainer:** The foundational step is to make the external data searchable by ingesting and indexing it, typically using a service like Azure AI Search.
> 
> 

---

### Question 6

A user asks an Azure-based RAG system a question. Azure AI Search returns several relevant paragraphs from a knowledge base. What is the role of the LLM in the next step of the process? Select the best answer.

* **A)** To rerank the retrieved paragraphs based on semantic relevance
* **B)** To generate a conversational answer using the paragraphs as context **(Correct Answer)**

* **C)** To reformulate the original query for a more refined search
* **D)** To extract key entities from the paragraphs for a summary

> **Explainer:** Once the relevant context is retrieved, the LLM generator synthesizes a conversational answer grounded directly in the provided paragraphs.
> 
> 

---

### Question 7

An advanced RAG pipeline first performs a quick search to get a broad set of potentially relevant documents. Then, a second step is applied to intelligently sort this set, ensuring the most useful information is at the top. What is this sorting step known as? Select the best answer.

* **A)** Reranking **(Correct Answer)**

* **B)** Context Compression
* **C)** Initial Retrieval
* **D)** Data Embedding

> **Explainer:** Reranking is a crucial optimization technique that refines the order of retrieved results to improve the overall quality and accuracy of the RAG pipeline.
> 
> 

---

### Question 8

A legal research RAG tool must find documents containing a specific case name and documents discussing similar legal concepts. To achieve this, the retrieval process uses both term-matching and semantic similarity. What is this combined retrieval strategy known as? Select the best answer.

* **A)** Semantic search
* **B)** Hybrid search **(Correct Answer)**

* **C)** Multi-modal search
* **D)** Singular search

> **Explainer:** Hybrid search integrates traditional keyword-based search with modern vector-based semantic search to provide more comprehensive and relevant results.
> 
> 

---

### Question 9

A team is testing the final answers produced by their RAG pipeline. They specifically check if the information in the answer is factually supported by the documents that were retrieved. What quality is being evaluated? Select the best answer.

* **A)** The answer relevant to the query
* **B)** The context relevance to the query
* **C)** The faithfulness of the generator **(Correct Answer)**

* **D)** The completeness of the answer

> **Explainer:** Faithfulness, or groundedness, measures whether the generator's output is factually consistent with the provided source documents and avoids generating ungrounded information.
> 
> 

---

### Question 10

A team is evaluating their RAG pipeline and wants to know how much of the information retrieved was actually useful for forming the final answer. What metric are they trying to measure? Select the best answer.

* **A)** Answer faithfulness
* **B)** Answer relevance
* **C)** Context recall
* **D)** Context precision **(Correct Answer)**


> **Explainer:** Context precision evaluates what proportion of the retrieved documents were actually relevant and useful for the generator to create the answer.
> 
>
