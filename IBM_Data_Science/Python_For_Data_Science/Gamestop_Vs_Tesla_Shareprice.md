# Optional: GameStop Stock vs. Tesla

Determining the price of a stock is complex. It depends on several factors, including the number of outstanding shares and expectations about the company’s future profits.

One key factor is profit growth. If a company’s profits are increasing, its stock price will often rise. In such cases, investors may choose to buy the stock in anticipation of future gains.

## Short Selling

What if an investor expects the stock price to decrease? **Short selling** is a strategy used to profit from a decline in a stock’s price. In this process, an investor:

1. **Borrows** shares of a stock.
2. **Sells** them at the current market price.
3. **Buys** them back later at a lower price.
4. **Returns** the shares to the lender.

If the price drops, the investor makes a profit. However, if the price rises instead, the investor can incur significant losses. Short selling is typically used by experienced investors, such as hedge funds. While stock prices often fall faster than they rise—making quick profits possible—the risks can be high.

## Real-World Examples

Short sellers do not always predict correctly:

* **Tesla:** Many investors once bet against Tesla, expecting its stock price to fall. However, as Tesla became more profitable, its stock price increased, leading to losses for those who had shorted it.
* **GameStop:** In some cases, stock prices rise due to factors beyond company performance. Individual investors on the Reddit forum **WallStreetBets** began buying large amounts of stock in GameStop, a struggling video game retailer, driving its price sharply upward. This caused significant losses for hedge funds that had shorted the stock.

## Your Task

As a data scientist working for a hedge fund, complete the following steps:

* Extract profit data for companies like Tesla and GameStop.
* Analyze stock price trends.
* Build a dashboard comparing stock prices and company profits.

* ----------------

* This classic financial data science case study contrasts **fundamental valuation** (Tesla) against **short-squeeze market dynamics** (GameStop). Below is the complete Python pipeline to extract historical stock and revenue/profit data, clean it, and render the dual-axis interactive Plotly dashboard.

---

### 1. Required Libraries

Install the required packages if running locally or in a notebook environment:

```bash
pip install yfinance pandas requests beautifulsoup4 plotly

```

*(Note: Because you are working in Google Colab for Python assessments, these packages are either pre-installed or can be run directly in a cell with `!pip install ...`)*.

---

### 2. Complete Python Implementation

```python
import yfinance as yf
import pandas as pd
import requests
from bs4 import BeautifulSoup
import plotly.graph_objects as go
from plotly.subplots import make_subplots
import warnings

warnings.filterwarnings("ignore", category=FutureWarning)

# ---------------------------------------------------------
# 1. EXTRACT HISTORICAL STOCK DATA (yfinance)
# ---------------------------------------------------------
def get_stock_data(ticker_symbol):
    ticker = yf.Ticker(ticker_symbol)
    df = ticker.history(period="max")
    df.reset_index(inplace=True)
    # Strip timezone info for clean date alignment
    df['Date'] = pd.to_datetime(df['Date']).dt.tz_localize(None)
    return df[['Date', 'Close', 'Volume']]

tsla_stock = get_stock_data("TSLA")
gme_stock = get_stock_data("GME")

# ---------------------------------------------------------
# 2. EXTRACT QUARTERLY REVENUE / PROFIT DATA (yfinance Financials)
# ---------------------------------------------------------
# Note: Using yfinance's built-in quarterly_financials avoids 403 blocks
# common when scraping Macrotrends directly, while providing exact Net Income & Revenue.
def get_financial_data(ticker_symbol):
    ticker = yf.Ticker(ticker_symbol)
    q_fin = ticker.quarterly_financials.T.reset_index()
    q_fin.rename(columns={'index': 'Date'}, inplace=True)
    q_fin['Date'] = pd.to_datetime(q_fin['Date']).dt.tz_localize(None)
    
    # Extract Total Revenue and Net Income (Profit) in Millions
    cols = ['Date']
    if 'Total Revenue' in q_fin.columns:
        q_fin['Revenue_M'] = q_fin['Total Revenue'] / 1e6
        cols.append('Revenue_M')
    if 'Net Income' in q_fin.columns:
        q_fin['Net_Income_M'] = q_fin['Net Income'] / 1e6
        cols.append('Net_Income_M')
        
    return q_fin[cols].dropna().sort_values('Date')

tsla_fin = get_financial_data("TSLA")
gme_fin = get_financial_data("GME")

# ---------------------------------------------------------
# 3. DASHBOARD VISUALIZATION FUNCTION
# ---------------------------------------------------------
def make_dashboard(stock_data, fin_data, company_name):
    fig = make_subplots(
        rows=2, cols=1,
        shared_xaxes=True,
        subplot_titles=(
            f"{company_name} Historical Share Price (USD)",
            f"{company_name} Quarterly Revenue & Net Income ($ Millions)"
        ),
        vertical_spacing=0.15
    )

    # Filter stock data to align with available financial reporting dates
    min_date = fin_data['Date'].min()
    stock_filtered = stock_data[stock_data['Date'] >= min_date]

    # Top Panel: Stock Price
    fig.add_trace(
        go.Scatter(
            x=stock_filtered['Date'],
            y=stock_filtered['Close'],
            name="Share Price ($)",
            line=dict(color="#1f77b4", width=2)
        ),
        row=1, col=1
    )

    # Bottom Panel: Revenue & Net Profit
    fig.add_trace(
        go.Bar(
            x=fin_data['Date'],
            y=fin_data['Revenue_M'],
            name="Quarterly Revenue ($M)",
            marker_color="#2ca02c",
            opacity=0.75
        ),
        row=2, col=1
    )

    if 'Net_Income_M' in fin_data.columns:
        fig.add_trace(
            go.Scatter(
                x=fin_data['Date'],
                y=fin_data['Net_Income_M'],
                name="Net Profit / Income ($M)",
                mode="lines+markers",
                line=dict(color="#d62728", width=2.5)
            ),
            row=2, col=1
        )

    fig.update_layout(
        title_text=f"<b>{company_name}: Share Price vs. Financial Performance</b>",
        height=700,
        template="plotly_dark",  # High-contrast dark theme
        showlegend=True,
        hovermode="x unified"
    )
    
    fig.update_yaxes(title_text="Price ($ USD)", row=1, col=1)
    fig.update_yaxes(title_text="$ Millions", row=2, col=1)
    fig.update_xaxes(title_text="Date", row=2, col=1)

    fig.show()

# Generate Dashboards
make_dashboard(tsla_stock, tsla_fin, "Tesla (TSLA)")
make_dashboard(gme_stock, gme_fin, "GameStop (GME)")

```

---

### 3. Key Analytical Takeaways for the Hedge Fund Case Study

| Dimension | Tesla (`TSLA`) | GameStop (`GME`) |
| --- | --- | --- |
| **Core Price Driver** | **Fundamental Profit Growth:** Sustained expansion in quarterly revenue (reaching ~$103.6B TTM) and transition to consistent GAAP profitability. | **Market Structure & Sentiment:** Retail coordination (WallStreetBets) triggering a massive short squeeze rather than earnings growth. |
| **Revenue & Profit Trend** | Long-term upward trajectory in vehicle deliveries, energy storage, and operating margins. | Multi-year structural decline in physical retail revenue (falling from ~$8.5B in FY18 to ~$3.6B in FY26), punctuated by sharp Q4 holiday seasonality. |
| **Short-Selling Lesson** | Shorting a company with accelerating cash flows and scaling margins exposes short sellers to compounding fundamental upside. | Even when fundamentals are weak, high short interest (>100% of float in early 2021) creates **asymmetric tail risk** where price decouples completely from earnings. |

### Alternative Web-Scraping Snippet (If Required by the Lab)

If your assessment specifically tests `BeautifulSoup` parsing on static HTML tables rather than `yfinance` financial statements, use a `User-Agent` header to prevent HTTP 403 rejections:

```python
url = "https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-PY0220EN-SkillsNetwork/labs/project/revenue.htm"
headers = {"User-Agent": "Mozilla/5.0"}
html_data = requests.get(url, headers=headers).text

# pandas.read_html parses the table directly without manual loop boilerplate
tables = pd.read_html(html_data)
tesla_revenue = tables[1]
tesla_revenue.columns = ["Date", "Revenue"]
tesla_revenue["Revenue"] = tesla_revenue["Revenue"].str.replace(r",|\$", "", regex=True)
tesla_revenue.dropna(inplace=True)

```
