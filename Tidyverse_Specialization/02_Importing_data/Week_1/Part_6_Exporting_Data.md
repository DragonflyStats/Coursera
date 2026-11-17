### Exporting Data from R
The last topic of this lesson is about how to export data from R. So far we learned about reading data into R. 
However, sometimes you would like to share your data with others and need to export your data from R to some format that your collaborators can see.

As discussed above, CSV format is a good candidate because of its simplicity and compatibility. 
Let’s say you have a data frame in the R environment that you would like to export as a CSV. 
To do so, you could use <tt>write_csv()</tt> from the readr package.

Since we’ve already created a data frame named df_csv, we can export it to a CSV file using the following code. 
After typing this command, a new CSV file called ***my_csv_file.csv*** will appear in the Files section.

<pre><code>
write_csv(df_csv, path = "my_csv_file.csv")
</code></pre>
You could similarly save your data as a TSV file using the function <tt>write_tsv()</tt> function.

We’ll finally note that there are default R functions <tt>write.csv()</tt> and write.table() that accomplish similar goals. 
You may see these in others’ code; however, we recommend sticking to the intuitive and quick ***{readr}*** functions discussed in this lesson.
