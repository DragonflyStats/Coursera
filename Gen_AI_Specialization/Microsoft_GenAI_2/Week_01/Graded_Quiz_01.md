## Microsoft: Core Generative Models and Techniques

### Module 1 Evaluation: Graded Quiz

---

##### Question 1

A developer is building an AI model to forecast stock prices. The model must analyze historical, sequential data to predict the next value in the series. Which model architecture is designed to generate data sequentially, making it ideal for this forecasting task? Select the best answer.

* **A)** Discriminative models
* **B)** Generative Adversarial Networks (GANs)
* **C)** Diffusion models
* **D)** Autoregressive models **(Correct Answer)**

> **Explainer:** Autoregressive models generate data sequentially by conditioning future predictions on past values, making them the ideal architecture for time-series forecasting tasks like predicting stock prices.

---

##### Question 2

When training a neural network, the model's internal weights are adjusted in a process designed to reduce its prediction errors. A key hyperparameter, the learning rate, scales the size of these adjustments. What is the primary function of the learning rate during this training process? Select the best answer.

* **A)** It regularizes the model's weights to prevent the model from overfitting.
* **B)** It controls the size of the steps the model takes to update its weights. **(Correct Answer)**
* **C)** It determines the direction in which the model's weights are adjusted to reduce errors.
* **D)** It determines how many training examples are used in each update.

> **Explainer:** The learning rate dictates the step size taken during gradient descent optimization when updating internal weights to minimize error.

---

##### Question 3

A team trains a Generative Adversarial Network (GAN) on a dataset containing cats, dogs, and birds. After training, the model only generates images of cats and fails to produce dogs or birds. This type of GAN failure, where the generator produces only a limited subset of the data distribution, is known as which phenomenon? Select the best answer.

* **A)** Overfitting
* **B)** Mode Collapse **(Correct Answer)**
* **C)** Underfitting
* **D)** Gradient Saturation

> **Explainer:** Mode collapse occurs in GANs when the generator collapses and learns to produce only a restricted variety of samples, failing to capture the full breadth of the training data distribution.

---

##### Question 4

A company needs to run an image recognition model directly on users' smartphones. The key requirements are high performance and minimal battery drain. The team needs a framework with a mature toolkit for optimizing models to run efficiently on these resource-constrained devices. Which framework offers the most established and comprehensive ecosystem for on-device deployment? Select the best answer.

* **A)** PyTorch
* **B)** TensorFlow **(Correct Answer)**
* **C)** JAX
* **D)** Core ML 


> **Explainer:**  TensorFlow (via TensorFlow Lite) offers a mature, cross-platform ecosystem equipped with robust optimization toolkits—such as quantization and hardware delegation—tailored specifically for deploying high-performance machine learning models across diverse, resource-constrained smartphones (both Android and iOS). Platform-specific tools like Core ML are restricted solely to Apple ecosystem devices.
---

##### Question 5

An e-commerce company is deploying a recommendation engine to serve millions of users. The project requires a framework with industrial-strength scalability and robust tools for managing large-scale deployment. Which framework is best known for its focus on production readiness and serving models at a massive scale? Select the best answer.

* **A)** PyTorch
* **B)** TensorFlow **(Correct Answer)**
* **C)** Keras
* **D)** Scikit-learn

> **Explainer:** TensorFlow has historically been recognized for its robust production readiness, enterprise-grade scalability, and specialized serving ecosystems (like TensorFlow Serving) for massive deployments.

---

##### Question 6

A PhD student at a university is researching a completely new type of neural network layer. The research involves frequent, complex changes to the model architecture and requires a framework that allows for maximum flexibility and easy, interactive experimentation.

Which of the following statements describes the framework best suited for this academic research context? Select the best answer.

* **A)** One that exists as a cloud-based platform, offering end-to-end services from data storage to automated model deployment.
* **B)** One that abstracts away low-level details through a simple, high-level interface, primarily designed for building standard, well-established model types.
* **C)** One that prioritizes a pre-compiled, static computation graph to optimize performance and simplify deployment.
* **D)** One that integrates with its host language, enabling model structure changes using standard conditionals and loops. **(Correct Answer)**

> **Explainer:** Research flexibility requires dynamic execution graphs (such as those in PyTorch) that integrate natively with host-language conditionals and loops, facilitating rapid and interactive experimentation.

---

##### Question 7

A data scientist is experimenting with different learning rates and batch sizes to find the best configuration for their generative model. They need a consistent way to measure which combination of these hyperparameters produces the best-performing model. In this hyperparameter tuning process, what role does the validation dataset play? Select the best answer.

* **A)** It is used to directly guide the adjustments of the model's internal parameters.
* **B)** It is used to compare the performance of models trained with different settings. **(Correct Answer)**
* **C)** It is used to report the final, most accurate measure of the model's success after all tuning is complete.
* **D)** It is used to clean and prepare the raw information before the learning process begins.

> **Explainer:** The validation dataset provides an unbiased evaluation benchmark to compare how models perform under different hyperparameter configurations during the tuning phase.

---

##### Question 8

A developer fine-tunes an autoregressive model on a small, specialized dataset of legal documents. The goal is to generate new legal clauses. However, the resulting model often generates text that is copied word-for-word from the documents it was trained on.

This lack of originality and tendency to reproduce training examples is a symptom of which training issue? Select the best answer.

* **A)** The training duration was not long enough for the model to develop a generalized understanding of the subject.
* **B)** The learning process has stabilized on a narrow range of outputs, limiting its creative potential.
* **C)** The model’s capacity is insufficient to capture the intricate rules of legal language, leading to errors.
* **D)** The model has become too specialized on the source material, hindering its ability to create content. **(Correct Answer)**

> **Explainer:** Over-specialization (or overfitting) on a small training dataset causes a model to memorize and regurgitate source text verbatim rather than generalizing patterns to generate novel content.

---

##### Question 9

To improve the fairness of a loan application model, a bank needs to create a synthetic dataset of customer profiles. The goal is to generate a wide variety of new, realistic profiles that mirror the statistical properties of the real data without being direct copies. Which architecture's internal "quality check" mechanism makes it highly effective at producing diverse and plausible data samples for this purpose? Select the best answer.

* **A)** A system that generates data by learning to reverse a process that slowly adds random noise.
* **B)** A method that learns to encode and then decode data points to generate new samples from a latent space.
* **C)** A system where one network creates data while a second network challenges its authenticity. **(Correct Answer)**
* **D)** An approach that generates each customer feature one at a time based on the previous features.

> **Explainer:** Generative Adversarial Networks (GANs) utilize a competitive dual-network structure where a generator creates samples and a discriminator evaluates authenticity, making them exceptionally strong at producing realistic synthetic data distributions.

---

##### Question 10

A health information website uses a generative AI to provide answers to user questions about medical conditions. The model is known to be very articulate and provides confident, well-structured responses. What is the most critical risk associated with deploying this type of AI in a high-stakes, factual domain like healthcare? Select the best answer.

* **A)** The model needs a continuous and very fast internet connection to formulate its responses.
* **B)** The system could decline to provide information on particularly rare or complex health topics.
* **C)** The model's answers may lack a consistently reassuring and empathetic communication style.
* **D)** The system can present fabricated or inaccurate information with a high degree of confidence. **(Correct Answer)**

> **Explainer:** Large language models can produce hallucinations—plausible-sounding yet entirely fabricated or incorrect statements delivered with high confidence—which poses severe risks in factual domains like healthcare.
