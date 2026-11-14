## Graded Quiz 02 - Data Preparation 
---

### **Question 1**

**Your team is designing a natural language processing (NLP) model to analyze customer reviews, where protecting the meaning of each word is important. Which tokenization method is most suitable for this scenario?**

* **Correct Answer:** **Word-based tokenization**
* **Explanation:** Word-based tokenization splits text into complete words, preserving the full semantic meaning of each individual word (unlike character-based or subword tokenization, which break words into smaller fragments).

---

### **Question 2**

**You are working on preprocessing text data for a machine learning model, and you observe that your tokenized sequences vary significantly in length. What technique will you use to standardize sequence lengths in your data loader?**

* **Correct Answer:** **Padding**
* **Explanation:** Padding adds special padding tokens (such as `<pad>` or `0`) to shorter sequences (and/or truncates longer ones) so that all sequences in a batch share the exact same uniform length.

---

### **Question 3**

**Which of the following symbols will you use for examining the output of a subword tokenizer and see that some tokens in the sequence start with a specific symbol, indicating they should be joined to the previous token without a space?**

* **Correct Answer:** **## symbol**
* **Explanation:** In WordPiece tokenization (used by models like BERT), subword tokens that continue a word rather than starting a new one are prefixed with `##` (e.g., `"token"`, `"##ization"`), indicating they attach directly to the preceding token without a space. *(By contrast, SentencePiece uses an underscore `▁` to mark the start of a new word with a leading space.)*

---

### **Question 4**

**Which of the following actions contributes most directly to improving data quality for large language model (LLM) training?**

* **Correct Answer:** **Remove noisy and irrelevant data entries.**
* **Explanation:** Data cleaning—specifically filtering out corrupted, duplicated, noisy, or irrelevant text—directly improves the signal-to-noise ratio and overall quality of the training corpus.

---

### **Question 5**

**You are configuring a data loader for training your deep learning model and want to prevent it from learning patterns based on sequential order in your dataset during training. Which input parameter will you use?**

* **Correct Answer:** **The shuffle argument**
* **Explanation:** Setting `shuffle=True` in a PyTorch `DataLoader` randomizes the order of samples at every epoch so the model does not memorize or overfit to the sequence in which records appear in the dataset.

---

### **Answer Key Summary**

| Question | Correct Option |
| --- | --- |
| **Q1** | **Word-based tokenization** |
| **Q2** | **Padding** |
| **Q3** | **## symbol** |
| **Q4** | **Remove noisy and irrelevant data entries.** |
| **Q5** | **The shuffle argument** |
