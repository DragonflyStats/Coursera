# Module 2: Implementing RAG Pipelines

**Estimated Time Remaining:** 23 min of videos | 1h 10m of readings | 1 graded assessment

**Module Objective:** Ground Large Language Models in external, private, or real-time data sources to provide accurate, contextually relevant, and hallucination-free responses using Azure AI Search and advanced Retrieval-Augmented Generation (RAG) techniques.

---

> **Important Notice on the Azure Interface**
> Screencast videos and screenshots were last updated in late 2025. Please be aware that Microsoft may have updated the Azure interface since then. If the steps shown in the course materials look different from your current Azure environment, please follow the most up-to-date interface, as the underlying concepts and learning objectives remain the same.

---

## Part 1: Foundations of Grounding & Basic RAG Architecture

This section covers the fundamentals of Retrieval-Augmented Generation (RAG). You will learn how to connect an LLM to external data stores, understand how retrieval frameworks operate, and construct your initial end-to-end pipeline using Azure AI Search.

### Learning Content & Activities

* **Introduction to RAG: Grounding AI with Data**
*Type:* Video • *Duration:* 4 min
*Overview:* Explores why LLMs hallucinate or lack domain-specific knowledge, introducing the concept of grounding LLM responses with external and proprietary datasets to ensure accuracy and relevance.
* **RAG Pipelines Explained**
*Type:* Video • *Duration:* 5 min
*Overview:* Breaks down the core architecture of a standard RAG pipeline, covering data ingestion, chunking, vector embedding generation, query retrieval, and context-augmented prompt generation.
* **Understanding RAG Frameworks**
*Type:* Reading • *Duration:* 15 min
*Overview:* Analyzes popular frameworks and integration patterns used to orchestrate data flows between vector databases, search indices, and generative language models.
* **Data Sources for RAG: Azure AI Search and the Marketplace**
*Type:* Video • *Duration:* 5 min
*Overview:* Demonstrates how to configure Azure AI Search, connect enterprise data sources, and utilize Azure Marketplace tools to index unstructured files for high-performance retrieval.
* **Exploring RAG Pipelines**
*Type:* Practice Assignment • *Duration:* 30 min
*Overview:* Hands-on activity guiding you through navigating and exploring an existing RAG workflow inside the Azure AI environment.
* **Introduction to RAG Techniques**
*Type:* Reading • *Duration:* 10 min
*Overview:* Examines basic retrieval methods, including exact-keyword search (BM25), vector similarity search, and hybrid approaches.
* **Basic RAG Pipeline Setup**
*Type:* Practice Assignment • *Duration:* 35 min
*Overview:* Guided lab where you connect an Azure AI Search index to an Azure OpenAI deployment to build your first functional RAG application.
* **Reviewing Your First RAG Pipeline**
*Type:* Reading • *Duration:* 10 min
*Overview:* Evaluates initial retrieval accuracy, token efficiency, and response quality from the basic pipeline set up in the lab.
* **RAG Fundamentals: Practice Quiz**
*Type:* Practice Assignment • *Duration:* 30 min
*Overview:* Knowledge check testing your understanding of grounding principles, basic vector indexing, and pipeline orchestration.

---

## Part 2: Advanced RAG Optimization, Scaling & Assessment

This section focuses on optimizing retrieval accuracy and managing production-scale RAG systems. You will implement advanced chunking strategies, semantic re-ranking, and performance evaluation metrics.

### Learning Content & Activities

* **Advanced RAG Pipeline Techniques**
*Type:* Reading • *Duration:* 15 min
*Overview:* Deep dive into complex chunking strategies (e.g., semantic or sliding window chunking), parent-document retrieval, query rewriting, and multi-query expansion.
* **Advanced RAG Configurations**
*Type:* Video • *Duration:* 4 min
*Overview:* Configures advanced settings in Azure AI Search, including semantic ranking, hybrid search scoring, and dynamic metadata filtering.
* **Optimizing RAG Implementations**
*Type:* Practice Assignment • *Duration:* 1 hour
*Overview:* Comprehensive hands-on lab focused on fine-tuning chunk sizes, tuning semantic re-ranking parameters, and measuring response latency versus accuracy trade-offs.
* **Effective RAG Optimization Strategies**
*Type:* Reading • *Duration:* 10 min
*Overview:* Covers best practices for debugging retrieval failures, addressing context length limitations, and suppressing hallucinated answers.
* **Advanced RAG Skills Evaluation: Practice Quiz**
*Type:* Practice Assignment • *Duration:* 30 min
*Overview:* Practice assessment designed to prepare you for the final module graded exam by testing advanced optimization scenarios.
* **Integrating and Scaling RAG**
*Type:* Dialogue • *Duration:* 15 min
*Overview:* An interactive expert discussion on operationalizing RAG systems, scaling vector indices, handling enterprise security, and managing cost efficiency in production environments.
* **Case Study: Implementing Advanced RAG in a Corporate Setting**
*Type:* Reading • *Duration:* 10 min
*Overview:* Real-world case analysis detailing how an enterprise successfully deployed a multi-tenant RAG architecture on Azure to serve thousands of concurrent users safely.
* **End-to-End RAG Pipelines: From Setup to Optimization**
*Type:* Video • *Duration:* 2 min
*Overview:* Summary video reviewing the end-to-end workflow from initial environment setup through advanced semantic optimization.

---

## Required Assessment

* **RAG Pipeline Design, Optimization, and Evaluation Assessment**
*Type:* Graded Assignment • *Duration:* 30 min
*Status:* Due Oct 26, 11:59 PM GMT
*Overview:* The final graded assessment evaluating your ability to architect, configure, optimize, and evaluate RAG pipelines using Azure AI services.
