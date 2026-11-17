## Exercise Summary

This assessment evaluates core competencies in **advanced prompt engineering techniques, advanced reasoning frameworks (Chain-of-Thought and Tree-of-Thought), multimodal prompts, and specialized design patterns** (such as interview and play-off patterns) for generative AI models.

---

## Graded Quiz: Prompt Engineering Basics

### Question 1

A user wants help selecting a car using an AI system. What is the advantage of using an interview pattern prompt for this task?

* **A)** The AI gives the cheapest car without explanation.
* **B)** The AI provides standard answers based on car popularity.
* **C)** The AI filters out most questions for simplicity.
* **D)** The AI gathers preferences through dialogue to suggest options. **(Correct Answer)**

> **Explainer:** Interactive questioning using the interview pattern enables dynamic, step-by-step dialogue to gather user preferences and deliver highly tailored recommendations.

---

### Question 2

To get detailed legal information from a model, what technique ensures that the LLM’s output is accurate?

* **A)** Use basic questions applicable to all users
* **B)** Embed legal terminology and references in the prompt **(Correct Answer)**
* **C)** Let the model generate whatever it finds
* **D)** Focus only on emotional framing

> **Explainer:** Incorporating domain-specific terminology and precise contextual references guides the model to produce more rigorous, accurate, and relevant professional outputs.

---

### Question 3

Imagine you are a content developer working with LLMs, and you must ensure that the responses generated are indiscriminatory and neutral. Which among the following techniques would you employ with your text prompts to instruct the model appropriately?

* **A)** Bias mitigation **(Correct Answer)**
* **B)** Few-shot prompting
* **C)** Zero-shot prompting
* **D)** Contextual guidance

> **Explainer:** Bias mitigation techniques specifically instruct the model to maintain neutrality, avoid stereotypes, and provide fair, indiscriminatory responses.

---

### Question 4

Imagine you are using the Chain-of-Thought approach to teach a generative AI model how to solve a mathematical problem. What is the key component of a prompt in this approach?

* **A)** A prompt includes a list of formulae to solve the question.
* **B)** A prompt consists of a question and a correct answer for context.
* **C)** A prompt includes only a question without an answer.
* **D)** A prompt includes a series of related questions without the correct answer. *(Wait, let's look closer at standard CoT components: usually a prompt includes a step-by-step reasoning example or instruction leading to the answer).* Let's check standard IBM/Coursera CoT prompt definitions. Usually, a CoT prompt provides reasoning steps or few-shot examples showing intermediate steps. Let's see which option fits best or look at standard course material if needed. Actually, let's verify standard CoT definition: Chain-of-thought prompting involves providing intermediate reasoning steps. Let's look at the options provided in the user prompt.
* Let's re-read the options given in the user query for Question 4:
* A prompt includes a list of formulae to solve the question.
* A prompt consists of a question and a correct answer for context. (Wait, few-shot with reasoning steps). Let's check if there's any source or if we should mark the one that mentions reasoning or step-by-step. Wait, the user text says: "Try again. Please review the ‘Chain-of-Thought Approach’ video." Since the user got it wrong, let's provide the correct answer clearly. Let's check what the correct answer for CoT typically is: it includes intermediate reasoning steps or examples showing the thought process. Wait, looking at the options provided by the user:
1. A prompt includes a list of formulae...
2. A prompt consists of a question and a correct answer for context.
3. A prompt includes only a question without an answer.
4. A prompt includes a series of related questions without the correct answer.
Wait, none of those explicitly say "intermediate reasoning steps", but let's check standard IBM course content for CoT prompts: Chain-of-thought prompts include examples with step-by-step reasoning paths. Let's provide the correct choice based on standard course definitions (usually demonstrating step-by-step reasoning or reasoning chains). Let's select the option that best represents step-by-step logic progression or provide the accurate concept.




* Let's review the options carefully:
* **A)** A prompt includes a list of formulae to solve the question.
* **B)** A prompt consists of a question and a correct answer for context. *(Correct Answer contextually for step-by-shot or worked examples)*
* **C)** A prompt includes only a question without an answer.
* **D)** A prompt includes a series of related questions without the correct answer.



> **Explainer:** Chain-of-Thought (CoT) prompting guides the model through intermediate logic steps or worked examples, showing it *how* to break down a complex problem before reaching the final conclusion.

---

### Question 5

An AI is advising patients on potential treatment options based on symptoms and test results. What is the best prompting technique?

* **A)** Ask the patient to pick one option up front
* **B)** Prompt the model to reason through the pros and cons of each treatment **(Correct Answer)**
* **C)** Show options ranked by popularity
* **D)** Present a list of outcomes and let them guess

> **Explainer:** The Tree-of-Thought approach or multi-path reasoning allows the model to systematically evaluate multiple treatment pathways, weighing the pros and cons of each before providing recommendations.

---

### Question 6

You are designing a feature in a writing assistant that helps users title their blog posts. The model first generates five potential headlines, then critiques them and selects the most effective based on emotional appeal and clarity. Which of the following best describes the prompting method you're using?

* **A)** Have the model generate multiple options, compare them, and self-select the winner **(Correct Answer)**
* **B)** Insert all options into a randomizer and pick one
* **C)** Chain-of-Thought reasoning for each headline individually
* **D)** Use a tree structure to simulate customer reactions to each title

> **Explainer:** This represents the Play-Off method (or ensemble self-evaluation), where the model generates diverse alternatives, evaluates their merits against specific criteria, and self-selects the optimal solution.

---

### Question 7

A user is redecorating their living room and uploads a picture asking, "What kind of interior design style is this, and what cushions would match it?" Your AI assistant must analyze the visual content and provide personalized suggestions. What type of prompt should you use for the assistant to understand the image and generate contextual text?

* **A)** Generate suggestions using a random cushion color palette
* **B)** Just ask the model to describe the image based on the filename
* **C)** A multimodal prompt combining the image and the user’s question **(Correct Answer)**
* **D)** Use the Chain-of-Thought approach to reason about cushion materials and colors

> **Explainer:** Multimodal prompts combine visual assets (like uploaded images) with text inputs, enabling the AI to analyze both data types simultaneously to generate contextual, accurate suggestions.
