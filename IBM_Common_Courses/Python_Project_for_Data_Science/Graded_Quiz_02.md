Here are the answers and brief explanations for each of the five questions in **IBM Python Project for Data Science: Extracting Stock Data Using a Web Scraping**:

---

### **Question 1**

**What is the primary role of the BeautifulSoup library in the web scraping process?**

* **Correct Answer:** **To parse HTML or XML content and create a navigable tree structure.**
* **Explanation:** BeautifulSoup takes raw HTML or XML text (typically downloaded using a library like `requests`) and parses it into a structured Document Object Model (DOM) tree so you can easily search, navigate, and extract specific tags and text.

---

### **Question 2**

**In an HTML document, which tag is used to define a single table row that contains table cell data?**

* **Correct Answer:** **`<tr>`**
* **Explanation:** In HTML, `<table>` defines the overall table, **`<tr>`** defines a single table row, `<th>` defines a table header cell, and `<td>` defines a standard table data cell.

---

### **Question 3**

**When using the `find_all('p')` method on a BeautifulSoup `soup` object, what kind of result is returned?**

* **Correct Answer:** **A list-like iterable containing all the paragraph (`<p>`) tag objects.**
* **Explanation:** While `.find('p')` returns only the first matching tag, `.find_all('p')` searches the entire parsed tree and returns a `ResultSet` (a Python list-like iterable) containing every matching `<p>` tag object.

---

### **Question 4**

**According to the module content, what is a significant limitation of using the `pandas.read_html()` function for web scraping?**

* **Correct Answer:** **It can only extract data from HTML `<table>` tags and is not flexible for other content.**
* **Explanation:** `pandas.read_html()` is a convenient shortcut for pulling structured tabular data enclosed in `<table>` elements, but unlike BeautifulSoup, it cannot extract arbitrary non-table page elements such as headings, paragraphs, links, or custom `<div>` containers.

---

### **Question 5**

**In the HTML tree structure, if the `<head>` tag and `<body>` tag are both directly inside the `<html>` tag, what is their relationship to each other?**

* **Correct Answer:** **They are siblings.**
* **Explanation:** Because `<head>` and `<body>` are both direct children of the same parent element (`<html>`) at the same hierarchy level, they are **siblings**.

---

### **Quick Answer Summary**

| Question | Correct Option |
| --- | --- |
| **Q1** | **To parse HTML or XML content and create a navigable tree structure.** |
| **Q2** | **`<tr>`** |
| **Q3** | **A list-like iterable containing all the paragraph (`<p>`) tag objects.** |
| **Q4** | **It can only extract data from HTML `<table>` tags and is not flexible for other content.** |
| **Q5** | **They are siblings.** |
