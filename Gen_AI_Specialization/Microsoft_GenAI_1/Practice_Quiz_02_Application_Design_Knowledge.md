Practice Quiz: Application Design Knowledge

## Microsoft: Getting Started with Generative AI in Azure

### Graded Quiz: Application Design & Architecture Evaluation

---

### Question 1

A developer is building an application that generates story ideas for writers. They need to connect the user interface, where the writer types a topic, to the AI model that creates the story ideas. What component acts as the bridge, allowing the user interface to send requests to the AI model and receive the generated text? Select the best answer.

* **A)** The Application Programming Interface (API) **(Correct Answer)**
* **B)** The server’s operating system
* **C)** The front-end framework
* **D)** The database

> **Explainer:** An Application Programming Interface (API) functions as the core communication bridge, enabling the front-end user interface to securely send user prompts and receive responses back from the backend AI model.

---

### Question 2

A team is developing a new chatbot application that's gaining significant traction. To ensure a smooth user experience, they need to design the system to handle a high volume of concurrent users and prevent performance degradation or system failures. What design principle is most important for ensuring the application can handle a large number of users? Select the best answer.

* **A)** Simplicity
* **B)** Scalability **(Correct Answer)**
* **C)** Data encryption
* **D)** Modularity

> **Explainer:** Scalability is the core system design principle that allows an application to expand its capacity and handle growing volumes of concurrent users and workloads smoothly without failing.

---

### Question 3

A company is designing an application that helps users write professional emails. The application needs to know the purpose of the email and the desired tone, such as "formal" or "friendly." What key design element is required to collect this information? *(Select all that apply)*

* **[ ]** An output display area
* **[ ]** A progress bar
* **[x]** **Dropdown menu for selecting the desired tone** **(Correct Answer)**
* **[x]** **User input fields** **(Correct Answer)**

> **Explainer:** Collecting user parameters like email purpose and tone requires input mechanisms such as text entry fields for open-ended details and dropdown menus for selecting pre-defined categories.

---

### Question 4

An application that summarizes private medical documents for doctors is being built. It is critical that only authorized medical staff can access the application and its sensitive data. What key design element is essential for protecting the application and ensuring only authorized people can use it? Select the best answer.

* **A)** Data encryption
* **B)** User interface design
* **C)** Scalability
* **D)** Authentication **(Correct Answer)**

> **Explainer:** Authentication verifies the identity of users attempting to access a system, ensuring that only verified and authorized personnel can view sensitive data or use the application.

---

### Question 5

A team's text generation app works well today, but they're worried that adding a new feature next year will mean rebuilding the whole app from scratch. What does this scenario suggest is missing from the application's design? Select the best answer.

* **A)** A more visually appealing user interface
* **B)** A faster internet connection
* **C)** Strong architecture **(Correct Answer)**
* **D)** A larger AI model

> **Explainer:** A robust, modular system architecture ensures that an application is extensible and maintainable, allowing new features to be integrated cleanly without requiring a complete rebuild.

---

### Question 6

A developer describes their new text generation app to a colleague: “We have the AI model generating the text, and we have the screen where users type their questions.” The colleague points out that something important is missing from this description. What core component have they left out? Select the best answer.

* **A)** The company's marketing plan
* **B)** The backend for orchestration and data management **(Correct Answer)**
* **C)** The billing dashboard
* **D)** The internet browser

> **Explainer:** Beyond the user-facing screen and the raw AI model, an application requires a backend orchestration layer to manage data flow, process requests, handle context, and coordinate responses.

---

### Question 7

A team is building a simple application that can answer questions about world capitals. They have already created the user interface where users can type a question. What is the core component that processes the user's question and creates the answer? Select the best answer.

* **A)** The "Send" button
* **B)** The internet browser
* **C)** The generative AI model **(Correct Answer)**
* **D)** The text input box

> **Explainer:** The generative AI model is the intelligent core engine that interprets the user's prompt and synthesizes a natural language answer.

---

### Question 8

A developer is creating a text generation app. When a user makes a request, there may be a delay before the AI creates the text. The developer wants to make sure users do not get confused or think the app is unresponsive. What design principle helps improve the user experience by showing that the application is working on a request? *(Select all that apply)*

* **[ ]** Choosing the most expensive model
* **[ ]** Hiding all error messages
* **[x]** **Disabling the submit button after submission** **(Correct Answer)**
* **[x]** **Providing clear system feedback** **(Correct Answer)**

> **Explainer:** Providing visual cues (like loading spinners, progress indicators, or status text) and disabling the submit button prevents duplicate requests and reassures users that their input is actively being processed.
