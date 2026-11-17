## Graded Quiz: Text Generation App Assessment


#### Approximate Syllabus Outline: Text Generation App Assessment

---

* **Core Principles of Responsible AI:** Understanding foundational ethical frameworks—such as accountability, transparency, safety, and fairness—and how they govern AI deployments.
* **Standardized Governance & Risk Assessment:** Implementing systematic, trackable methods to evaluate and manage risks uniformly across AI projects.
* **Bias Identification & Mitigation:** Recognizing how historical training data can perpetuate systemic biases and reproduce unequal treatment or outcomes.
* **Platform Safeguards & Content Filtering:** Leveraging built-in Microsoft Foundry and Azure AI safety features to automatically detect and intercept inappropriate or harmful content.
* **Security & Vulnerabilities:** Identifying adversarial threats such as prompt injection attacks and preventing unintended data exposure or safety bypasses.
* **Responsible AI Documentation & Compliance:** Establishing comprehensive documentation covering value-based considerations, operational limitations, and safety implementations as core project deliverables equal in importance to working code.

---

### Question 1

A company uses an AI system to make important business decisions. If the AI causes unexpected negative impacts, a system needs to be in place to determine who is responsible for the system's outcomes. Which core principle of responsible AI does this practice align with? Select the best answer.

* **A)** Transparency
* **B)** Accountability **(Correct Answer)**
* **C)** Safety
* **D)** Reliability

> **Explainer:** Accountability ensures that individuals, teams, and organizations remain answerable for the outcomes and impacts produced by their AI systems.

---

### Question 2

An organization wants to promote that all of its AI systems be developed responsibly. They decide to implement a single structured method for reviewing every project. What is the primary advantage of using this standardized method? Select the best answer.

* **A)** It simplifies the process of demonstrating regulatory compliance to auditors.
* **B)** It provides a consistent and trackable method for assessing risks. **(Correct Answer)**
* **C)** It creates a common language for stakeholders to discuss ethical considerations.
* **D)** It automates the ethical decision-making process for developers.

> **Explainer:** A standardized review process ensures risks are evaluated uniformly, systematically, and trackably across every project lifecycle.

---

### Question 3

A hospital deploys an AI symptom checker to recommend specialist referrals. A clinical audit finds that patients over 60 are consistently recommended fewer follow-up tests than younger patients with identical symptoms and medical histories. The model was trained on 10 years of the hospital's own clinical decision records. What ethical problem does this represent? Select the best answer.

* **A)** A hallucination, because the model is generating recommendations that do not reflect the patients' actual symptoms.
* **B)** Bias, because the model learned and reproduced patterns of unequal clinical treatment from its training data. **(Correct Answer)**
* **C)** Model drift, because the model's performance has degraded since it was first deployed.
* **D)** A prompt injection attack, because users are manipulating the model into producing age-based recommendations.

> **Explainer:** When an AI model reproduces historical disparities or unequal treatment present in its training data, it exhibits systemic bias.

---

### Question 4

A developer is building a public chatbot. They are concerned that users might try to make the chatbot generate inappropriate or offensive responses. Which practical safeguards in Azure AI are designed to mitigate this specific risk? Select the best answer.

* **A)** Version control systems
* **B)** Prompt complexity optimization
* **C)** Performance monitoring dashboards
* **D)** Content filters **(Correct Answer)**

> **Explainer:** Azure AI content filters automatically detect and block harmful, offensive, or inappropriate content in both prompts and model responses.

---

### Question 5

A customer service chatbot is designed to answer questions about product features. A user submits a query that appears to be a product question, but when processed, the chatbot ignores the question and instead reveals a list of recent customer email addresses from its database. What is the most likely cause of this unintended behavior? Select the best answer.

* **A)** A prompt injection attack **(Correct Answer)**
* **B)** A model hallucination
* **C)** A data privacy breach in the training set
* **D)** A content filter failure

> **Explainer:** A prompt injection attack occurs when malicious user input tricks the model into bypassing its safety guidelines and executing unintended instructions or revealing sensitive data.

---

### Question 6

A developer is using Microsoft Foundry to build a text generation application. What are the primary benefits of using Microsoft Foundry's built-in safety features such as content filters?

* **A)** They optimize the model's responses for factual accuracy.
* **B)** They provide a ready-to-use solution for implementing safeguards. **(Correct Answer)**
* **C)** They replace the need for additional testing and evaluation of the model.
* **D)** They provide detailed metrics on the model's inherent bias.

> **Explainer:** Built-in safety features give developers out-of-the-box, ready-to-deploy mechanisms to protect their applications without needing to build custom filtering systems from scratch.

---

### Question 7

A compliance officer at a fintech company is reviewing documentation submitted by the development team for a newly built text generation tool. She needs to confirm the team built it responsibly. She notes that the most essential information the documentation must contain is:

The **________________** considerations addressed and the safety features implemented.

* **A)** performance
* **B)** value-based **(Correct Answer)**
* **C)** regulatory
* **D)** technical

> **Explainer:** Responsible AI governance requires documenting the value-based ethical considerations alongside technical safety implementations to ensure alignment with human values.

---

### Question 8

A product lead at a software company is evaluating her team's AI text generation tool ahead of launch. She needs to confirm it meets the responsible AI requirement of integrating technical functionality with ethical principles. Which of the following would satisfy this requirement? Select the best answer.

* **A)** The tool performs its core task and has content filters operating as part of its generation pipeline. **(Correct Answer)**
* **B)** The tool performs its core task and achieves the highest possible accuracy on performance benchmarks.
* **C)** The tool performs its core task and its documentation explains the model architecture in detail.
* **D)** The tool performs its core task and has a governance plan for quarterly human oversight reviews.

> **Explainer:** Integrating technical functionality with ethical principles means embedding operational safeguards—such as active content filters—directly into the application's processing pipeline.

---

### Question 9

A team has implemented Azure's content filters in their AI application. What is the next logical step to confirm that the filters are working as intended? Select the best answer.

* **A)** Conducting tests with inappropriate prompts to see if they are blocked. **(Correct Answer)**
* **B)** Analyzing user-generated content over time to see if harmful outputs decrease.
* **C)** Generating a report from the cloud provider to show the filter service is active.
* **D)** Comparing the model's performance latency with and without the filters enabled.

> **Explainer:** Actively probing the system with test prompts designed to trigger safety limits is the most direct way to validate that content filters are properly intercepting and blocking restricted content.

---

### Question 10

A development team at an insurance company has built a text generation tool and is preparing to present it to their AI ethics board. A board member asks the team why comprehensive documentation was treated as a deliverable equal in importance to the working tool itself. Which TWO reasons best justify this? *(Select all that apply)*

* **[x]** **It provides transparency about the safeguards in place and the limitations of the tool.** **(Correct Answer)**
* **[ ]** It confirms the tool meets the performance benchmarks required for production deployment.
* **[x]** **It demonstrates that responsible considerations shaped the development process, not just the final output.** **(Correct Answer)**
* **[ ]** It provides the ethics board with a record of the team's technical architecture decisions.

> **Explainer:** Comprehensive documentation is vital because it establishes clear operational transparency regarding tool limitations/safeguards and proves that responsible AI principles guided every stage of development.
