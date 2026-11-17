# Module 2 Glossary: Implementing RAG Pipelines

Here is a glossary of key terms, concepts, and technologies covered in **Module 2 (Implementing RAG Pipelines)**:

---

### **A**

* **Azure AI Search**
A cloud-based information retrieval and search service in Microsoft Azure that provides vector search, full-text search, and hybrid search capabilities over enterprise data sources for RAG applications.

---

### **B**

* **BM25**
A traditional keyword-based ranking algorithm used in search engines to measure the relevance of matching documents to a user query based on term frequency and inverse document frequency.

---

### **C**

* **Context Length / Context Window**
The maximum number of tokens an LLM can process in a single request (including both the retrieved background prompt context and the user query).
* **Contextual Grounding**
The practice of supplying an LLM with relevant, verified domain data within the prompt context to ensure its responses are accurate, current, and directly traceable to reliable sources.

---

### **D**

* **Data Chunking**
The process of splitting large documents into smaller, manageable text segments (e.g., by fixed character count, sentence boundaries, or semantic structures) before generating embeddings and storing them in a search index.

---

### **E**

* **Embeddings (Vector Embeddings)**
High-dimensional numerical representations of text tokens or chunks that capture semantic meaning, allowing computer algorithms and vector databases to perform similarity matching based on content rather than exact keywords.

---

### **H**

* **Hallucination**
A phenomenon where a generative language model outputs plausible-sounding information that is factually incorrect, misleading, or completely ungrounded in source data.
* **Hybrid Search**
A search strategy that combines full-text keyword retrieval (such as BM25) with dense vector similarity search to maximize search precision and recall.

---

### **M**

* **Multi-Query Expansion**
An advanced RAG technique where a user prompt is rephrased into multiple alternative queries by an LLM to retrieve a broader and more accurate set of supporting documents.

---

### **P**

* **Parent-Document Retrieval**
An advanced chunking and indexing pattern where smaller sub-chunks are used for precise vector similarity search, but the larger "parent" document section is passed to the LLM to preserve surrounding context.

---

### **Q**

* **Query Rewriting**
A technique in which an LLM reformulates, disambiguates, or cleans up a raw user input query before executing a search against the vector index to improve retrieval quality.

---

### **R**

* **Retrieval-Augmented Generation (RAG)**
An architectural pattern that enhances generative LLM outputs by retrieving relevant factual information from external, private, or real-time data sources and incorporating it into the model's prompt.

---

### **S**

* **Semantic Ranking (Re-ranking)**
A secondary scoring process applied to the top retrieved search results using deep learning models to re-order documents based on true semantic relevance to the query.
* **Semantic Search**
A search technique that matches queries to indexed content based on conceptual meaning and context rather than exact word or string matching.
* **Sliding Window Chunking**
A chunking technique where consecutive text chunks overlap by a set number of tokens or characters to preserve contextual continuity across chunk boundaries.

---

### **V**

* **Vector Index**
A specialized data structure optimized for fast, high-dimensional similarity searches (such as Cosine distance or Nearest Neighbor algorithms) across text embeddings.
