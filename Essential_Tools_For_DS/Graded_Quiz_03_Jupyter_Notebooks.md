###### Summary Answer Key

1. **PDF**
2. **Interactive control of the notebook cells and output**
3. **Run -> Run Selected Cells**
4. **By clicking the top right of the notebook**
5. **Browser**
6. **Exporter**
7. **Can create interactive graphics and visualizations**
8. **You can clone GitHub projects and execute them in GoogleColab**
9. **Visual Studio Code**
10. **By installing Python extensions**

---

###### Question 1

1. **Question Restatement:** In which formats can you share a notebook with other users?
2. **Options Listing:**
* A. doc
* B. xls
* C. PDF
* D. ppt


3. **Correct Answer Indication:** **C. PDF**
4. **Explanation/Rationale:** Jupyter Notebooks can be exported and shared directly as static PDF documents (as well as HTML, Markdown, and Python scripts) via `nbconvert` / file export menus. Standard office formats like `.doc`, `.xls`, or `.ppt` are not native notebook export formats.

---

###### Question 2

1. **Question Restatement:** What is a feature of a JupyterLab?
2. **Options Listing:**
* A. Interactive control of the notebook cells and output
* B. Allows support of a single HTML file format
* C. Is not an open source
* D. Allows access to a single Notebook


3. **Correct Answer Indication:** **A. Interactive control of the notebook cells and output**
4. **Explanation/Rationale:** JupyterLab is an open-source, web-based interactive development environment that provides flexible, interactive control over notebook code/markdown cells and their resulting graphical and textual outputs. It also supports multiple files and layouts simultaneously.

---

###### Question 3

1. **Question Restatement:** Which option gives the output of the current highlighted code cell in Jupyter Notebook?
2. **Options Listing:**
* A. Run -> Render All Markdown Cells
* B. Edit -> Run
* C. Run -> Run All Cells
* D. Run -> Run Selected Cells


3. **Correct Answer Indication:** **D. Run -> Run Selected Cells**
4. **Explanation/Rationale:** Selecting `Run -> Run Selected Cells` (or pressing `Shift + Enter`) executes the currently active/highlighted code cell and displays its corresponding output immediately below the cell.

---

###### Question 4

1. **Question Restatement:** How can you switch the kernel in the Jupyter Notebook?
2. **Options Listing:**
* A. By clicking the top right of the notebook
* B. From the Edit menu on top of the notebook
* C. By clicking the top left of the notebook
* D. By clicking on the Code option


3. **Correct Answer Indication:** **A. By clicking the top right of the notebook**
4. **Explanation/Rationale:** In both classic Jupyter Notebooks and JupyterLab, the active programming language environment (kernel indicator) is located in the top-right corner of the interface. Clicking it opens a dialogue menu to change or select a different active kernel.

---

###### Question 5

1. **Question Restatement:** Which of the following can be used to work with Jupyter Notebook?
2. **Options Listing:**
* A. Browser
* B. Notepad++
* C. Notepad
* D. Explorer


3. **Correct Answer Indication:** **A. Browser**
4. **Explanation/Rationale:** Jupyter Notebook is a web application that runs its user interface inside a standard web browser (e.g., Chrome, Firefox, Safari), communicating with a local or remote server background process.

---

###### Question 6

1. **Question Restatement:** What do you use to convert the ipynb file to other formats?
2. **Options Listing:**
* A. Postprocessor
* B. Preprocessor
* C. Exporter
* D. Client Browser


3. **Correct Answer Indication:** **C. Exporter**
4. **Explanation/Rationale:** Jupyter's conversion architecture (`nbconvert`) relies on **Exporters** (such as HTMLExporter, PDFExporter, or LatexExporter) to convert raw `.ipynb` JSON notebooks into target output document formats.

---

###### Question 7

1. **Question Restatement:** What is one of the features of JupyterLite?
2. **Options Listing:**
* A. Requires a dedicated server
* B. Default kernel is SQLite
* C. Can create interactive graphics and visualizations
* D. It is not a static website


3. **Correct Answer Indication:** **C. Can create interactive graphics and visualizations**
4. **Explanation/Rationale:** JupyterLite is a lightweight Jupyter distribution that runs entirely in the web browser using WebAssembly (WASM). It functions as a static website without needing a dedicated server backend, while retaining full capabilities to render interactive graphics and visualizations locally within the client.

---

###### Question 8

1. **Question Restatement:** What is one of the features of GoogleColab?
2. **Options Listing:**
* A. You can clone GitHub projects and execute them in GoogleColab
* B. You need to set up and install GoogleColab Jupyter notebooks
* C. GoogleColab projects are stored on the local machine
* D. GoogleColab Jupyter notebooks execute on a server


3. **Correct Answer Indication:** **A. You can clone GitHub projects and execute them in GoogleColab**
4. **Explanation/Rationale:** Google Colaboratory (Colab) natively integrates with GitHub, enabling users to open, clone, edit, and execute public or private GitHub repository notebooks directly within the cloud environment without local installation.

---

###### Question 9

1. **Question Restatement:** Which environment is used for creating and modifying Jupyter Notebooks on a local device?
2. **Options Listing:**
* A. SQLite
* B. Python
* C. Visual Studio Code
* D. GoogleColab


3. **Correct Answer Indication:** **C. Visual Studio Code**
4. **Explanation/Rationale:** Visual Studio Code (VS Code) is a desktop IDE that natively supports creating, editing, and running Jupyter Notebooks (`.ipynb`) locally on a desktop or laptop device. GoogleColab is cloud-hosted, SQLite is a database, and Python is the underlying programming language.

---

###### Question 10

1. **Question Restatement:** How can you execute Python code in Visual Studio code?
2. **Options Listing:**
* A. By selecting Markdown from the drop-down menu
* B. By clicking on Download as
* C. By installing Python extensions
* D. By selecting Code from the drop-down menu


3. **Correct Answer Indication:** **C. By installing Python extensions**
4. **Explanation/Rationale:** To run and debug Python code or Jupyter Notebooks inside Visual Studio Code, you must install the official Python (and Jupyter) extension from the VS Code Extension Marketplace.

---

### Appendix

This module evaluates core concepts surrounding interactive data science development environments, specifically the Jupyter ecosystem and desktop IDE tools. Topics covered include the architecture of Jupyter Notebooks (`.ipynb`), kernel execution, export mechanisms via `nbconvert` exporters, and web-based execution runtimes like JupyterLite and Google Colaboratory.

Additionally, the assessment tests familiarity with local desktop configurations, such as configuring Visual Studio Code with language-specific extensions to write, execute, and debug interactive Python code and data science notebooks seamlessly on local machines.
