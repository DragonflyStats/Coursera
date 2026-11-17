
#### Question 1
Using the following object: 

<pre><code>
colors <- c('red','orange','yellow','green','blue','violet','#C8C8C8','#000000')</tt>
</code></pre>

Note: be sure to copy the entire vector. It ends with a closed parenthesis.

To return the value 'TRUE' for each string that contains numbers in the object colors, which would you use?

* <tt>str_view(colors, '\\d')</tt>
* <tt>str_extract(colors, '[0-9]')</tt>
* <tt>str_extract(colors, '\\d')</tt>
* **Correct** <tt>str_detect(colors, '\\d')</tt>

-----------------------------

#### Question 2
To return the values of each string that contains numbers in the object colors (in Question 1), which would you use?


* <tt>str_view(colors. '\\d')</tt>
* <tt>str_extract(colors, `\\d`)
* <tt>str_detect(colors, '[0-8]')</tt>
* **Correct**  <tt>str_subset(colors, '[0-9]')</tt>

-----------------------------

#### Question 3

To print the values of the colors object that start with a lowercase letter, which would you use?

* <tt>str_detect(colors, '[a-z]')</tt>
* ***Incorrect*** <tt>str_extract(colors, '^[[:lower:]]')</tt>
* <tt>str_extract(colors, '[a-z]')</tt>
* **Correct** <tt>str_subset(colors, '^[a-z]')</tt> 


-----------------------------

#### Question 4
To print the number of lowercase letters in each string within colors, which would you use?

* <tt>str_count(colors, '[A-Z]')</tt>
* **Correct** <tt>str_count(colors, '[a-z]')</tt>
* <tt>str_detect(colors, '[a-z]')</tt>
* <tt>str_detect(colors, '^[a-z]')</tt>



-----------------------------

#### Question 5
What does * <tt>str_view_all(colors, "\\d+[A-Z]+")</tt> match?


* a string consisting of only uppercase letters
* ***Incorrect*** one digit followed by one capital letter
* **Correct** one or more digits followed by one or more capital letters
* any uppercase letter

-----------------------------

#### Question 6

What does * <tt>str_count(colors, '[a-zA-Z]')</tt> accomplish?

* prints the number of lowercase letters followed by uppercase letters in each string
* **Correct** prints the number of letters in each string
* counts the number of capital letters in each string
* counts the number of lowercase letters in each string

-----------------------------

#### Question 7

If you were to identify which strings start with #, what would you use?



* **Correct** <tt>str_view_all(colors, '^#')</tt>
* <tt>str_view_start(colors, '#')</tt>
* <tt>str_view_all(colors, '$#')</tt>
* <tt>str_view_all(colors, '#^')</tt>

-----------------------------

#### Question 8

Using, <tt>str_view_all(), how would you only highlight strings that start with a vowel?



* <tt>str_view_all(colors, "^[royg]")</tt>
* <tt>str_view_all(colors, "^[letters]")</tt>
* **Correct** <tt>str_view_all(colors, "^[aeiou]")</tt>
* <tt>str_view_all(colors, "^[vowels]")</tt>

-------------------
