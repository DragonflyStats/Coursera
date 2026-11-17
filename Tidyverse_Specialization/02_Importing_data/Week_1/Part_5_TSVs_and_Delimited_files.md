### TSVs
Another common form of data is text files that usually come in the form of TXT or TSV file formats. 
Like CSVs, text files are simple, plain-text files; however, rather than columns being separated by commas, they are separated by tabs (represented by "\t" in plain-text). 
Like CSVs, they don’t allow text formatting (i.e. text colors in cells) and are able to be opened on many different software platforms. 

This makes them good candidates for storing data.

#### Reading TSVs Files into R
The process for reading these files into R is similar to what you’ve seen so far. 
We’ll again use the ***{readr}*** package, but we’ll instead use the <tt>read_tsv()</tt> function.

<pre><code>
## read TSV into R
df_tsv <- read_tsv("sample_data - Sheet1.tsv")

## look at the object
head(df_tsv)
</code></pre>

### Delimited Files
Sometimes, tab-separated files are saved with the .txt file extension. TXT files can store tabular data, but they can also store simple text. 
Thus, while TSV is the more appropriate extension for tabular data that are tab-separated, you’ll often run into tabular data that individuals have saved as a TXT file. 
In these cases, you’ll want to use the more generic <tt>read_delim()</tt> function from readr.

#### Reading Delimited Files into R
Google Sheets does not allow tab-separated files to be downloaded with the <tt>.txt</tt> file extension (since .tsv is more appropriate); however, if you were to have a file “sample_data.txt” uploaded into R, you could use the following code to read it into your R Environment, where "\t" specifies that the file is tab-delimited.

<pre><code>
## read TXT into R
df_txt <- read_delim("sample_data.txt", delim = "\t")

## look at the object
head(df_txt)
</code></pre>
This function allows you to specify how the file you’re reading is in delimited. 
This means, rather than R knowing by default whether or not the data are comma- or tab- separated, you’ll have to specify it within the argument delim in the function.

The <tt>read_delim()</tt> function is a more generic version of <tt>read_csv()</tt>. 
What this means is that you could use <tt>read_delim()</tt> to read in a CSV file. 
You would just need to specify that the file was comma-delimited if you were to use that function.

