Microsoft: Working with Large Language Models using Azure
Foundations and Deployment of Generative AI Applications Assessment
Question 1
A developer is creating a generative AI application that generates creative story ideas for writers. The first step is to create a blueprint of the application's structure. Which component is essential to define in the initial high-level architecture design? Select the best answer.

A) The selection of a specific large language model for content generation

B) The interaction logic between the frontend interface and the backend AI service (Correct Answer)

C) The choice of a specific programming language for the backend implementation

D) The database schema for storing user profiles and generated content

Explainer: Establishing the high-level architecture and interaction logic between the user interface and backend services is the foundational first step when scoping and structuring a generative AI application.

Question 2
A team is architecting a generative AI application for language translation. They need to make sure that the mobile app can send text to the AI model on Azure and receive the translation back smoothly. What is the function of the API in this application's architecture? Select the best answer.

A) To store the history of user queries and the translations provided by the model

B) To accelerate response times by caching frequently requested translations

C) To execute the AI model's algorithms that generate the language translation

D) To define the specific commands and data formats for communication (Correct Answer)

Explainer: Application Programming Interfaces (APIs) define the standardized commands, protocols, and data structures that allow client applications to communicate smoothly with backend AI models.

Question 3
A developer is designing a complex workflow for a generative AI application that needs to take user input, query a database, and then generate a response. They want to map out this logic before writing code. Which Azure tool is specifically designed to help visualize and orchestrate the different steps in a generative AI application's workflow? Select the best answer.

A) Azure Logic Apps

B) Azure Data Factory

C) Azure Prompt Learning

D) Prompt Flow (Correct Answer)

Explainer: Prompt Flow provides an intuitive visual interface to design, test, trace, and manage the sequence of operations and custom logic in a generative AI application.

Question 4
A team is building a content generation tool in Azure AI Foundry. The tool needs to accept a topic from the user and then use an AI model to write a short paragraph about it. What is the primary technical task when building this application's core functionality? Select the best answer.

A) To develop the service that makes calls to the generative model API (Correct Answer)

B) To engineer a series of prompts for different writing styles

C) To fine-tune a foundation model with domain-specific data

D) To design the user interface for submitting content topics

Explainer: Building the core functionality centers on developing the backend services that handle input ingestion and make programmatic API calls to the deployed generative model.

Question 5
A team is building an AI agent with Prompt Flow that can answer questions based on a set of provided documents. The process involves retrieving relevant document chunks and then generating an answer. What is a core capability of Prompt Flow that is essential for building this application? Select the best answer.

A) It includes advanced tools for monitoring model performance after deployment.

B) It simplifies the process of integrating data sources and custom logic with LLMs. (Correct Answer)

C) It provides a built-in vector database for storing and indexing document chunks.

D) It automatically fine-tunes the base LLM using the provided documents.

Explainer: Prompt Flow streamlines the orchestration process by making it easy to connect external data sources, retrievers, and custom execution logic directly with large language models.

Question 6
An AI engineer is developing a generative AI application. A simple user interface has been provided, allowing the engineer to focus on the main AI-driven parts of the application. What is the primary focus when building the core functional components of the application? Select the best answer.

A) Building the backend services and integrating the generative AI model (Correct Answer)

B) Optimizing the provided user interface for faster response times

C) Establishing a data collection pipeline for user feedback analysis

D) Configuring the cloud infrastructure for scalable application deployment

Explainer: When the user interface is pre-established, the core technical focus shifts entirely to building robust backend services and integrating the generative AI model logic.

Question 7
A developer has finished building a generative AI application and now needs to make it accessible to other services and users over the internet. What is the standard method for deploying a generative AI application on Azure to make it accessible? Select the best answer.

A) Deploying the application logic as a serverless Azure Function.

B) Packaging the model as a web application on Azure App Service.

C) Hosting the application on a dedicated Azure Virtual Machine.

D) Creating a managed online endpoint to serve real-time inferences (Correct Answer)

Explainer: Creating managed online endpoints provides scalable, secure, and production-ready infrastructure to serve real-time model inferences on Azure.

Question 8
A team is deploying a generative AI application on Azure AI Foundry. They are concerned about unauthorized usage, which could lead to high costs and potential misuse. How can the team make sure their deployed endpoint is secure? Select the best answer.

A) By implementing strict rate-limiting policies on the endpoint

B) By isolating the endpoint within a private virtual network

C) By configuring key-based or token-based access for the endpoint (Correct Answer)

D) By using a complex and non-guessable endpoint naming convention

Explainer: Configuring key-based or token-based authentication is the essential security measure that validates client identity and restricts unauthorized access to the endpoint.

Question 9
A startup is launching a new generative AI application and anticipates a rapid increase in users. They need to make sure the application can handle the growing traffic without crashing. What is the key benefit of deploying the application as a scalable endpoint on Azure? Select the best answer.

A) It simplifies the process of updating the model to a newer version with minimal downtime.

B) It enables the system to adjust its resource allocation to meet fluctuating user demand (Correct Answer)

C) It distributes the application across multiple geographic regions for lower latency.

D) It establishes a fixed monthly cost for hosting irrespective of the application's usage.

Explainer: Scalable cloud endpoints automatically scale compute resources up or down dynamically to accommodate fluctuating user traffic without service disruption.

Question 10
After deploying a generative AI application, the team notices occasional failures but cannot identify the cause. They need a system to collect data about the application's operational status. Why is it important to implement a monitoring strategy for a deployed application? Select the best answer.

A) To archive model training data for future retraining system cycles

B) To log user interactions for auditing and compliance verification purposes

C) To compare the performance of different model versions on live user traffic

D) To track metrics for diagnosing issues and optimizing system behavior (Correct Answer)

Explainer: Comprehensive monitoring collects production telemetry and performance metrics, providing the visibility necessary to diagnose unexpected runtime failures and optimize system behavior.
