Regular Expressions
===================================

Above we discuss the basics of working with strings within stringr. However, working with strings becomes infinitely easier with an understanding of regular expressions. Regular expressions (regexps) are used to describe patterns within strings. They can take a little while to get the hang of but become very helpful once you do. With regexps, instead of specifying that you want to extract the first three letters of a string (as we did above), you could more generally specify that you wanted to extract all strings that start with a specific letter or that contain a specific word somewhere in the string using regexps. We’ll explore the basics of regexps here.

The use them in stringr, the general format is <tt>function(string , pattern = regexp)</tt>, which you’ll see used in practice below. 
The set of functions from stringr we’ll cover are listed below

We’ll cover a number of helpful stringr functions:

str_view() - View the first occurrence in a string that matches the regex

str_view_all() - View all occurrences in a string that match the regex

str_count() - count the number of times a regex matches within a string

str_detect() - determine if regex is found within string

str_subset() - return subset of strings that match the regex

str_extract() - return portion of each string that matches the regex

str_replace() - replace portion of string that matches the regex with something else

#### Anchors
If interested in finding a pattern at the beginning (^) or end ($) of a string, you can specify that using a regexp. 
For example, if you wanted to only look at names that started with the letter “M”, you would specify that using a regexp. 
The pattern you would include would be "^M" to identify all strings that start with the letter M. 
To specify those strings that end with a capital M, you would specify the pattern "$M".

Show matches: str_view()
To get comfortable with using regexps with strings, str_view() can be very helpful. 
The output from <tt>str_view()</tt> highlights what portion of your string match the pattern specified in your regexp with a gray box. 
For example, to we’ll start using anchors and str_view() below:

12345
names <- c("Keisha", "Mohammed", "Jane", "Mathieu")

## identify strings that start with "M"
str_view(names, "^M")

Keisha

Mohammed

Jane

Mathieu


Figure: str_view() identifies names that start with M

In this first example we see in the Viewer Panel that str_view() has identified the names that start with the letter “M”.

However, if you try to match strings that end with the letter “M”, no match is found. Thus no names show any highlights.

123
## identify strings that end with "M"
str_view(names, "M$")

Keisha

Mohammed

Jane

Mathieu


Figure: str_view() does not identify any names that end with M

To identify names by that end with the letter “a”, you would use the following.

123
## identify strings that end with "a"
str_view(names, "a$")

Keisha

Mohammed

Jane

Mathieu


Figure: str_view() identifies names that end with a

Note, however, that regexps are case sensitive. To match patterns, you have to consider that “A” and “a” are different characters. 
Thus no strings will be found to end with an "A".

123
## identify strings that end with "A"
str_view(names, "A$")


Figure: str_view() does not identify any names that end with A

#### Count matches: str_count()
To count the number of matches within your strings, you would use str_count(). 
Below, using the names vector we’ve been using, we see that str_count() produces a 1 for those names that start with “M” and a 0 otherwise.

<pre><code>
## identify strings that start with "M"
## return count of the number of times string matches pattern
str_count(names, "^M")
# [1] 0 1 0 1
</code></pre>

Figure: str_count() strings that start with “M”

However, if we instead wanted a count of the numbers of lowercase “m”s, we could still use str_count() to accomplish that. 
Notice below we’ve removed the specification to just look at the beginning of the string. 
Here, we’re looking for lowercase m’s anywhere in the string and counting them:

<pre><code>
## identify strings that have a lowercase "m"
## return count of the number of times string matches pattern
str_count(names, "m")
## [1] 0 2 0 0
</code></pre>

Figure: str_count() strings that have an m in them

#### Detect matches: str_detect()
Instead of returning a count, at times you’re just interested in knowing which strings match the pattern you’re searching for. 
In these cases you’ll want to use str_detect(). This function simply returns a TRUE if the string matches the pattern specified and FALSE otherwise.

<pre><code>
## identify strings that start with "M"
## return TRUE if they do; FALSE otherwise
str_detect(names, "^M")
## [1] FALSE  TRUE FALSE  TRUE
</code></pre>

Figure: str_detect() returns TRUE for strings that match the specified pattern; FALSE otherwise

#### Subset matches: str_subset()
To return the actual string that matches the specified pattern, rather than a TRUE/FALSE, you’ll look to str_subset(). 
This function pulls out those strings that match the specified pattern. 
For example, to obtain the subset of names whose values start with the capital letter “M”, you would use the following:

<pre><code>
## identify strings that start with "M"
## return whole string
str_subset(names, "^M")
## [1] "Mohammed" "Mathieu"
</code></pre>

Figure: str_subset() returns the strings that match the pattern specified

Extract matches: str_extract()
To extract only the portions of the string that match the specified pattern, you would use str_extract(). 
This function returns the pattern specified for strings where it is found and NA otherwise. 
For example, by searching for names that start with M, below, we see that the second and fourth strings in our vector return the pattern specified (“M”) and that the first and third strings in the vector return NA, as they do not start with a capital “M”.

12345
## return "M" from strings that start with "M"
## otherwise, return NA
str_extract(names, "^M")
## [1] NA  "M" NA  "M"


Figure: str_extract() returns the portions of the strings that match the pattern specified

Replace matches: str_replace()
The final basic function from stringr that we’ll discuss is str_replace(). 
This function identifies a regex and replaces each occurrence with whatever replacement the user specifies. 
For example, below we search for strings that start with the capital letter “M” and replace each of them with a question mark. All strings that do not match the regex are returned unchanged.

1234
## replace capital M with a question mark
str_replace(names, "^M", "?")
## [1] "Keisha"   "?ohammed" "Jane"     "?athieu"


Figure: str_replace() replaces regex with specified characters

Common regular expressions
Above we discuss two common patterns searched for using regular expressions: starts with (^) and ends with ($). 
However, there are a number of additional common ways to match patterns. They are listed here, and we’ll discuss each one in slightly more detail below.

Searching for characters
To search for a set of characters, you place these characters within brackets. 
Below, this will identify anywhere in the strings where you have a lowercase vowel. 
Note, that we’re now using str_view_all() to identify all occurrences of these characters, rather than str_view(), which only identifies the first occurrence in each string.

123
## identify all lowercase vowels
str_view_all(names, "[aeiou]")

Keisha

Mohammed

Jane

Mathieu


Figure: brackets specify which characters to search for

Searching for anything other than a set of characters
By adding a caret (^) before the vowels within the brackets, this regular expressions specifies that you are searching for any character that is not a lowercase vowel within your strings.

12
## identify anything that's NOT a lowercase vowel
str_view_all(names, "[^aeiou]")
Keisha

Mohammed

Jane

Mathieu


Figure: brackets with a caret first specify which characters NOT to search for

### Search for digits
To search for digits (numeric variable between 0 and 9) in a string you use “; however, backslashes are protected characters in R. 
This means that you have to escape this character first with an additional backslash (\), to let R know that you want to search for the regular expression”.

1234
addresses <- c("1234 Main Street", "1600 Pennsylvania Ave", "Brick Building")

## identify anything that's a digit
str_view_all(addresses, "\\d")
1234 Main Street

1600 Pennsylvania Ave

Brick Building


Figure: \d searches for digits

Search for whitespace
Identifying whitespace in R identifies any spaces, tabs or newlines. 
Note that again we have to escape the “” with a backslash for R to recognize the regular expression.

12
## identify any whitespace
str_view_all(addresses, "\\s")
1234 Main Street

1600 Pennsylvania Ave

Brick Building


Figure: \s searches for whitespace

Identify any character (except newline)
To identify any character except for a newline you’ll use ".". 
Notice in our addresses example that there are no newlines, so this pattern will match with the entire string.

12
## identify any character
str_view_all(addresses, ".")
1234 Main Street

1600 Pennsylvania Ave

Brick Building



Repetition within regular expressions
Searches for regular expressions allow you to specify how many times a pattern should be found within the string. To do so, you use the following:

? : 0 or 1

+ : 1 or more

\\* : 0 or more

{n} : exactly n times

{n,} : n or more times

{n,m} : between n and m times

Examples of repetition within regular expressions
Using the definitions above, we can see that the following code will identify patterns within the addresses vector where n shows up one more more times in a string.

12
## identify any time n shows up one or more times
str_view_all(addresses, "n+")
1234 Main Street

1600 Pennsylvania Ave

Brick Building



Figure: {#} looks to match the pattern exactly the number of times within the curly braces

If you only wanted to match strings where n showed up twice in a row, you could specify that in this way:

123
## identify any time n shows up exactly two times in a row
str_view_all(addresses, "n{2}")

1234 Main Street

1600 Pennsylvania Ave

Brick Building


Figure: {2} specifies that the pattern must be found exactly twice

This could similarly be achieved by specifying to search for the pattern ‘nn’ one or more times (+):

123
## identify any time 'nn' shows up one or more times 
str_view_all(addresses, "nn+")

1234 Main Street

1600 Pennsylvania Ave

Brick Building


Figure: nn+ searches for double n one or more times in a string

You can also specify a range of the number of times to search for a pattern within your string. 
Below, we see that if we specify n be searched for at least two and at most 3 times, the pattern matches within our string. However, if we increase that to between three and four times, no pattern matching occurs, as there are never three or four n’s in a row in our strings.

12
## identify any time n shows up two or three times 
str_view_all(addresses, "n{2,3}")
1234 Main Street

1600 Pennsylvania Ave

Brick Building

12
## identify any time n shows up three or four times 
str_view_all(addresses, "n{3,4}")
1234 Main Street

1600 Pennsylvania Ave

Brick Building


Figure: {n,m} looks to pattern match between n and m times












