# Course Syllabus: Working with Large Language Models using Azure

> **Azure Interface Notice:** Screencast videos and screenshots were last updated in late 2025. As Microsoft regularly updates the Azure interface, please follow the active interface in your Azure environment while relying on the core concepts and learning objectives outlined below.

---

## Module 1: Understanding Large Language Models (LLMs)

This foundational module introduces the core concepts behind Large Language Models (LLMs). You will start by exploring the fundamental architecture that powers models like GPT (Generative Pre-trained Transformer) and learn how they process information and generate human-like text. The second half of the module is dedicated to prompt engineering, where you will learn and apply essential techniques—from basic commands to advanced strategies like few-shot learning and chain-of-thought—to effectively communicate with and control AI models to achieve desired outcomes.

### Core Topics

* **Transformer Architecture Fundamentals:** Self-attention mechanisms, tokenization, embeddings, and positional encodings.
* **LLM Sequence Generation:** Autoregressive text generation and vocabulary probability distributions.
* **Prompt Engineering Strategies:**
* System instructions, personas, and behavioral alignment.
* Direct commands and clear structural outputs.
* Few-shot prompting and Chain-of-Thought (CoT) reasoning.
* Iterative prompt design workflows.



### Graded Assessment

* **Graded Quiz:** LLM Fundamentals and Prompt Engineering

---

## Module 2: Implementing RAG Pipelines

This module focuses on Retrieval-Augmented Generation (RAG)—one of the most effective techniques for enhancing LLMs. You will learn how to ground models in external, private, or real-time data sources to provide more accurate and contextually relevant responses. You will start by building a basic RAG pipeline using Azure services and then progress to constructing and optimizing advanced systems with techniques like semantic ranking and sophisticated data chunking strategies.

### Core Topics

* **RAG Fundamentals & Grounding:** Integrating external, private, and real-time knowledge bases to reduce hallucinations.
* **Data Chunking & Ingestion:** Strategies for splitting, structuring, and indexing domain data.
* **Retrieval Optimization:** Vector search, semantic ranking, and context retrieval in Azure.
* **End-to-End Pipeline Design:** Connecting data indexing to generative model inference.

### Graded Assessment

* **Graded Assessment:** RAG Pipeline Design, Optimization, and Evaluation Assessment

---

## Module 3: Fine-Tuning and Customizing LLMs

This module explores fine-tuning as a specialized method for customizing an LLM's core behavior, style, or knowledge. You will learn the entire fine-tuning workflow, from preparing a high-quality dataset to launching training jobs and evaluating customized models in Azure. Critically, you will learn to strategically decide when to use fine-tuning versus RAG—or a hybrid approach—to build targeted, domain-specific AI solutions.

### Core Topics

* **Fine-Tuning Workflows:** Data preparation, format structuring, and fine-tuning job setup in Azure.
* **Architectural Decisions:** Strategic trade-offs between Prompt Engineering, RAG, Fine-Tuning, and Hybrid patterns.
* **Model Customization:** Tailoring model behavior, domain language, and specialized output structures.
* **Custom Model Evaluation:** Measuring output quality, alignment, and performance post-training.

### Graded Assessment

* **Graded Assessment:** Customization Strategies and Model Evaluation Assessment

---

## Module 4: Developing Generative Applications with Azure

This module transitions from theory to practice by guiding you through the end-to-end process of building and deploying a complete generative AI application. You will design application architectures and user flows before using Azure AI Foundry and Prompt flow tools to build them. The module then covers the critical MLOps lifecycle, teaching you how to deploy applications as secure endpoints, manage production environments, and implement continuous monitoring with Azure Monitor for performance and cost.

### Core Topics

* **Generative App Architecture:** Designing application flows, prompt logic, and user interaction patterns.
* **Azure AI Tools:** Building and orchestrating workflows using Azure AI Foundry and Prompt flow.
* **Deployment & Endpoint Security:** Provisioning secure API endpoints for production workloads.
* **MLOps & Operational Health:** Monitoring accuracy, performance latency, and operational costs with Azure Monitor.

### Graded Assessment

* **Graded Assessment:** Generative AI Application Development and Deployment Assessment
