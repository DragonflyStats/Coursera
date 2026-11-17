Week 3: Data Wrangling
=============================================


Once the data you identified is gathered and imported, your next step is to make it analysis-ready. This is where the process of Data Wrangling, or Data Munging, comes in. 

Data Wrangling is an iterative process that involves data exploration, transformation, and validation.  

Transformation of raw data includes the tasks you undertake to:

* Structurally manipulate and combine the data using Joins and Unions.

* Normalize data, that is, clean the database of unused and redundant data.

* Denormalize data, that is, combine data from multiple tables into a single table so that it can be queried faster. 

* Clean data, which involves profiling data to uncover quality issues, visualizing data to spot outliers, and fixing issues such as missing values, duplicate data, irrelevant data, inconsistent formats, syntax errors, and outliers.

Enrich data, which involves considering additional data points that could add value to the existing data set and lead to a more meaningful analysis.

### Software

A variety of software and tools are available for the Data Wrangling process. 

Some of the popularly used ones include Excel Power Query, Spreadsheets, OpenRefine, Google DataPrep, Watson Studio Refinery, Trifacta Wrangler, Python, and R, each with their own set of characteristics, strengths, limitations, and applications. 

 * OpenRefine, previously known as Google Refine, is an open source, web based data cleaning and transformation tool. OpenRefine allows you to import and clean large datasets in formats such as Excel, XML, RDF as XML, RDF N3 triples, JSON, TSV, and CSV

-------------------------------------------------

### The data wrangling process
1. Discovery 

Before you can start the wrangling process, it is critical to think about what may lie beneath your data. That is to say, it is crucial to think critically about what results you are anticipating from your data and what you will use your data for once the wrangling process is complete. Once you’ve determined your objectives, you can gather your data. 

2. Organization

After you’ve gathered your raw data within a particular dataset, you must structure your data. Due to the variety and complexity of data types and sources, raw data is often overwhelming to look at at first glance. 

3. Cleaning

When your data is organized, you can begin cleaning your data. Data cleaning involves removing outliers, formatting nulls, and eliminating duplicate data. It is important to note that cleaning data collected from web scraping methods might be a much more tedious process than cleaning data collected from a database. Essentially, web data can be highly unstructured and require much more time than structured data from a database. 

4. Data enrichment

This step requires that you take a step back from your data to determine if you have enough data to proceed. Finishing the wrangling process without enough data may compromise insights gathered from further analysis. For example, investors looking to analyze product review data will want a significant amount of data, accurately portraying the market, and in turn, increasing investment intelligence. 

5. Validation

After determining you gathered enough data, you will need to apply validation rules to your data. Validation rules, performed in repetitive sequences, confirm that your data is consistent throughout your dataset. Validation rules will also ensure quality as well as security. This step follows similar logic utilized in data normalization, a data standardization process involving validation rules.  

6. Publishing

The final step of the data munging process is data publishing. Data publishing involves preparing the data for future use. This may include providing notes and documentation of your wrangling process and creating access for other users and applications. 

It is also important to note that, like many other data transformation processes, data wrangling is an iterative process requiring you to revisit your data regularly. To better understand the munging process, let’s take a look at data mining, a subset of data wrangling.
