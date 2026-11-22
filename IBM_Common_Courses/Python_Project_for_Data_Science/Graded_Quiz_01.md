### **Question 1**

**Which line of Python code correctly creates a yfinance Ticker object for the company with the stock symbol "AAPL"?**

* **Correct Answer:** `aapl = yf.Ticker("AAPL")`
* **Explanation:** In the `yfinance` library (commonly imported as `yf`), `Ticker()` is capitalized and requires the stock ticker symbol passed as a string in quotes.

---

### **Question 2**

**What is the primary purpose of the .history() method when called on a yfinance Ticker object?**

* **Correct Answer:** **To download historical market data like open, high, low, and close prices.**
* **Explanation:** Calling `.history()` retrieves historical time-series trading data—including Open, High, Low, Close, Volume, Dividends, and Stock Splits—over a specified period.

---

### **Question 3**

**If you execute the code stock_data = msft.history(period="ytd"), what data will be retrieved?**

* **Correct Answer:** **Historical data from the beginning of the current year to today.**
* **Explanation:** `"ytd"` stands for **Year-to-Date**, which fetches market data starting from January 1 of the current calendar year up to the most recent trading day.

---

### **Question 4**

**What type of Python object is returned by the ticker.history() method?**

* **Correct Answer:** **A Pandas DataFrame**
* **Explanation:** `ticker.history()` returns a `pandas.DataFrame` indexed by `Date` with columns for daily market metrics.

---

### **Question 5**

**Which attribute of a yfinance Ticker object is used to retrieve static company information like its industry, country, and a long business summary?**

* **Correct Answer:** **`.info`**
* **Explanation:** Accessing the `.info` attribute (e.g., `ticker.info`) returns company profile metadata such as sector, industry, country, market cap, and `longBusinessSummary`.

---

### **Question 6**

**What is the data structure of the object returned by the .info attribute?**

* **Correct Answer:** **A Python Dictionary**
* **Explanation:** `ticker.info` returns a standard Python `dict` mapping metadata keys (e.g., `'sector'`, `'country'`) to their respective values.

---

### **Question 7**

**Assuming amd = yf.Ticker("AMD"), which line of code correctly accesses the company's sector from its information dictionary?**

* **Correct Answer:** `amd.info['sector']`
* **Explanation:** Because `amd.info` is a Python dictionary, values are accessed using square-bracket key indexing (`['sector']`) rather than parentheses or direct attribute lookup.

---

### **Question 8**

**After running amd_data = amd.history(period="max"), what are the names of the columns that represent the stock's opening and closing price for a given day?**

* **Correct Answer:** **'Open' and 'Close'**
* **Explanation:** The DataFrame returned by `.history()` uses capitalized column names: `'Open'`, `'High'`, `'Low'`, `'Close'`, `'Volume'`, `'Dividends'`, and `'Stock Splits'`.

---

### **Question 9**

**The yfinance Python library provides an interface for downloading market data from which primary online source?**

* **Correct Answer:** **Yahoo Finance**
* **Explanation:** `yfinance` is an open-source Python wrapper designed to fetch historical and fundamental financial market data from **Yahoo Finance**.

---

### **Question 10**

**You need to download historical stock data for exactly the last 6 months using the .history() method. Which value for the period parameter should you use to accomplish this?**

* **Correct Answer:** `period="6mo"`
* **Explanation:** Valid `yfinance` period strings include `"1d"`, `"5d"`, `"1mo"`, `"3mo"`, `"6mo"`, `"1y"`, `"2y"`, `"5y"`, `"10y"`, `"ytd"`, and `"max"`, so `"6mo"` specifies six months.

---

### **Revised Quick Answer Key (`yfinance` Quiz)**

| Question | Option Order | Correct Answer |
| --- | --- | --- |
| **Q1** | **3rd option** | `aapl = yf.Ticker("AAPL")` |
| **Q2** | **1st option** | To download historical market data like open, high, low, and close prices. |
| **Q3** | **1st option** | Historical data from the beginning of the current year to today. |
| **Q4** | **1st option** | A Pandas DataFrame |
| **Q5** | **1st option** | `.info` |
| **Q6** | **1st option** | A Python Dictionary |
| **Q7** | **2nd option** | `amd.info['sector']` |
| **Q8** | **2nd option** | `'Open'` and `'Close'` |
| **Q9** | **1st option** | Yahoo Finance |
| **Q10** | **2nd option** | `period="6mo"` |
