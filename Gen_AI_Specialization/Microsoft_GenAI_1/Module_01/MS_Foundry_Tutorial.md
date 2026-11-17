# Short Tutorial: Getting Started with Microsoft Foundry for Generative AI

## What is Microsoft Foundry?

**Microsoft Foundry** is Microsoft's unified platform for building, deploying, and managing AI applications and agents. It provides access to a wide range of foundation models, development tools, orchestration services, evaluation capabilities, and governance features in a single environment.

### With Microsoft Foundry, developers can:

- Explore and deploy large language models (LLMs)
- Build chatbots and AI assistants
- Create AI agents that interact with tools and data
- Ground AI responses using enterprise data (RAG)
- Evaluate, monitor, and govern AI applications

---

## Core Components

### 1. Model Catalog

The Model Catalog provides access to foundation and open-source models from providers such as OpenAI, Anthropic, Meta, and others. Users can compare, deploy, and evaluate models for different use cases.

#### Typical Model Uses

| Task | Example Model Type |
|--------|------------------|
| Chatbots | GPT models |
| Content generation | Language models |
| Summarisation | LLMs |
| Image creation | Multimodal models |
| Code generation | Coding models |

---

### 2. Projects

A Project acts as a workspace where you organise:

- Models
- Datasets
- Prompts
- Agent configurations
- Evaluation results

Projects help teams collaborate and manage AI solutions throughout their lifecycle.

---

### 3. AI Agents

Microsoft Foundry supports the creation of intelligent agents that can:

- Answer questions
- Use external tools
- Access enterprise knowledge
- Perform multi-step reasoning workflows

Agents can connect to APIs, databases, business systems, and custom tools.

---

# Building Your First Generative AI Chat Application

## Step 1: Create a Project

1. Open the Microsoft Foundry portal.
2. Create a new Project.
3. Select the Azure subscription and resources you want to use.

---

## Step 2: Select a Model

Choose a model from the catalog based on your requirements.

### Consider:

- Accuracy
- Cost
- Speed
- Context window size

Microsoft Foundry allows you to compare and evaluate models before deployment.

---

## Step 3: Deploy the Model

Deploy the selected model to an endpoint.

The deployment creates a hosted inference endpoint that applications can call through APIs.

---

## Step 4: Build Prompts

Prompt engineering is often the quickest way to improve results.

### Example Prompt

```text
You are a statistical tutor.

Explain the Central Limit Theorem to first-year university students.

Provide a practical example and avoid technical jargon.
```

### Best Practices

- Clearly define the model's role
- Specify the audience
- Include output format requirements
- Use examples when possible

---

## Step 5: Test and Evaluate

Evaluate outputs for:

- Accuracy
- Relevance
- Safety
- Consistency

Microsoft Foundry includes model evaluation capabilities to help compare prompts and models systematically.

---

# Enhancing Responses with RAG

**Retrieval-Augmented Generation (RAG)** allows a model to use external knowledge sources instead of relying only on its training data.

## Typical Workflow

```text
User Question
      ↓
Search Enterprise Documents
      ↓
Retrieve Relevant Content
      ↓
Include Context in Prompt
      ↓
Generate Answer
```

### Benefits

- More accurate responses
- Access to current information
- Reduced hallucinations
- Better enterprise knowledge access

Microsoft Foundry supports grounding AI applications using organisational data and search services.

---

# Responsible AI Considerations

Microsoft emphasises responsible AI practices, including:

- Content filtering
- Safety evaluations
- Monitoring and governance
- Security controls
- Compliance management

These capabilities help organisations deploy generative AI safely and responsibly.

---

# Typical Use Cases

- Customer support assistants
- Knowledge base chatbots
- Document summarisation
- Report generation
- Code assistants
- Educational tutors
- Business process automation

---

# Learning Path

A common progression is:

1. Learn prompt engineering
2. Deploy a foundation model
3. Build a chat application
4. Add tools and agents
5. Implement RAG
6. Evaluate performance
7. Apply responsible AI controls
8. Deploy to production

---

# Summary

Microsoft Foundry provides a unified environment for developing generative AI solutions. It combines model access, prompt engineering, agent development, RAG capabilities, evaluation, and governance, enabling organisations to move from experimentation to production AI applications efficiently.

## Additional Resources

- Microsoft Learn: https://learn.microsoft.com/en-us/training/azure/ai-foundry
- Azure AI Foundry: https://azure.microsoft.com/en-us/products/ai-foundry/
- AI Foundry Portal: https://ai.azure.com/
- Learning Path: https://learn.microsoft.com/en-us/training/paths/develop-generative-ai-apps/
