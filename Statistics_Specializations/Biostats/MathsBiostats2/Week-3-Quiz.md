----------------------------------------------------------------------------

### Question 1

At a party a friend brags that they can tell the difference between cheap and expensive wine. 
You ask him to taste eight glasses wine for which you have randomized as 4 expensive and 4 cheap. 
Calculate a P-vlaue for the relevant exact hypothesis test using R's <tt>fisher.test()</tt> function.

* ***Incorrect*** Around 0.4
* Around 0.1
* Around 0.2
* Around 0.8
* Around 0.9
* Around 0.5
* Around 0.6
* Around 0.3
* Around 0.7

--------------------------------------------------------------------------------------

### Question 2

A drug treatment (T = treatment, P = Placebo) has been randomized to 5 patients in each arm. 
Consider testing an increase in side effects (S = side effects, N = none). The data are

Calculate Fisher's exact P-value for a one sided test of the relevant hypothesis.

* ***Incorrect*** Around 0.50
* Around 0.25
* Around 0.10
* Around 0.05
* Less than 0.01

--------------------------------------------------------------------------------------

### Question 3

In a review of the author Jane Austen's work, scholars found the following relative frequencies of the words an''an'', that'' and “this''
An new story claimed to be Austen's was discovered with the word "an” 140 times, the word “that” 100 times and the word “this” 50 times. Are these counts consistent with Austen's traditional frequencies?  Give a chi-squared P-value for the relevant test.

1 point

* ***Correct*** Around 0.05
* Around 0.50
* Around 0.25
* Greater than 0.75


--------------------------------------------------------------------------------------

### Question 4
Two drugs, A and B , are being investigated in a randomized trial with the data are given below. Investigators would like to know if the Drug A and Drug B are equivalent in the terms of the distribution of side effects.


What are the expected cell counts under the null hypothesis?


* ***Correct*** 70, 22.5, 7.5 for each row 
* 140, 45 and 15 for each row
* 33.3, 33.3 and 33.3 for each row
* 80, 15 and 5 for row 1 (Drug A) and
* 60, 30 and 10 for row 2 (Drug B)


--------------------------------------------------------------------------------------

### Question 5

100 people who took a pain medication for chronic pain were asked if they still had pain one hour after receiving the dose. 
They received the dose on two separate weeks. 
The results are given below with the result of the first week's  dose on the rows and the second week's on the columns.

Does it appear that the self report impact of the medication is independent from one week to the next? (Test using the relevant chi-squared test.)

* ***Correct*** No, they do not appear independent; we would reject a chi squared test of independence.
* No, the do not appear to be independent; we would fail to reject a chi squared test of independence.
* Yes, they do appear to be independent; we would reject a chi squared test of independence. 
* Yes, they do appear to be independent; we would fail to reject a chi squared test of independence. 


--------------------------------------------------------------------------------------

### Question 6

A researcher is studying migration patterns. 
She collected the location of the current and previous homes for subjects who moved across regions (Northeast, Souteast and West). 
She recorded the following:

Here the row is current home region and the column is the region the person moved to.

Here the diagonals are not included since she only studied subjects who moved between regions. 
She would like to know if the probability of moving from region a to b is the same as the probability of moving from region b to a for all regions a and b.

What can be said about the expected cell counts?



* ***Correct*** The expected cell counts would be the average of a cell and its symmetrically opposite cell.
* The expected cell counts would be the same as that of a test of independence.
* The expected cell counts could not be determined.
* The expected cell counts would be the same as that of a goodness of fit test.


--------------------------------------------------------------------------------------

### Question 7

Standard decks of playing cards have 13 cards of each suit (diamonds, clubs, hearts, spades) for a total of 52 cards. 
Someone gives you a 52 card deck. You draw a card, record its suit, replace the card, shuffle the deck and repeat that process 200 times, obtaining the following table

Does the distribution of suits appear to be standard?

* ***Incorrect*** We would reject a chi-squared GOF test; we can rule out that the deck is standard
* We would reject a chi-squared GOF test; we can not rule out that the deck is standard
* We would fail to reject a chi-squared GOF test; we can rule out that the deck is standard
* We would fail to reject a chi-squared GOF test; we can not rule out that the deck is standard

--------------------------------------------------------------------------------------

### Question 8
Consider the table below comparing the self reported job stress levels of three occupations. 
100 people from each of three occupations were surveyed.
Researchers are interested in whether or not the perception of job stress differs by occupation. 
Using the relevant chi-sqared test. What can be said about the researcher's hypothesis?

* ***Incorrect*** We fail to reject; the stress levels do not appear to be different between jobs
* We reject; the stress levels do not appear to be different between jobs
* We fail to reject; the stress levels do appear to be different between jobs
* We reject; the stress levels appear to differ between jobs

* 
-------------------------------------------

#### R Code

## Fisher's Exact Test
## Allows us to test the equality of binomial proportions without relying on asymptotics

## Uses conditional distribution that fixes the rows and columns of the outcome matrix:
##  hypergeometric distribution

## Fishers exact test:
dat <- matrix(c(4, 1, 2, 3), 2)
fisher.test(dat, alternative = "greater")

## Q1: At a party a friend brags that they can tell the difference between cheap and expensive wine. You ask him to taste eight glasses wine for which you have randomized as 4 expensive and 4 cheap. Calculate a P-vlaue for the relevant exact hypothesis test using R's fisher.test function.
result <- matrix(c(4, 1, 2, 6), 2)
fisher.test(result, alternative = "greater") # 0.08625

## Q2: A drug treatment (T = treatment, P = Placebo) has been randomized to 5 patients in each arm. Consider testing an increase in side effects (S = side effects, N = none). The data are
## 	    T 	P
## S 	3 	1
## N 	2 	4
dat <- matrix(c(3,2,1,4),2)
fisher.test(dat, alternative = "greater") ## 0.26

## Q3: In a review of the author Jane Austen's work, scholars found the following relative frequencies of the words 'an', 'that' and 'this'
##   an 	that 	this
## 0.53 	0.35 	0.12
## An new story claimed to be Austen's was discovered with the word "an" 140 times, the word "that" 100 times and the word "this" 50 times. Are these counts consistent with Austen's traditional frequencies? Give a chi-squared P-value for the relevant test.
tot <- 140+53+100
dat <- matrix(c(140, 100, 53, 50, 35, 12), ncol = 2)
chisq.test(dat) # > 0.75

## Q4: Two drugs, A and B , are being investigated in a randomized trial with the data are given below. Investigators would like to know if the Drug A and Drug B are equivalent in the terms of the distribution of side effects.
## 	       None 	Nausea 	Nauesea and Vomiting 	Total
## Drug A 	80 	     15 	5 	                    100
## Drug B 	60 	     30 	10 	                    100
##         140       45     15                      200
## What are the expected cell counts under the null hypothesis?
cell_11 = (140/200)*100
cell_12 = (45/200)*100
cell_13 = (15/200)*100
## 70, 22.5, 7.5 (both rows the same)

## Q5: 100 people who took a pain medication for chronic pain were asked if they still had pain one hour after receiving the dose. They received the dose on two separate weeks. The results are given below with the result of the first week's dose on the rows and the second week's on the columns.
## 	    Yes 	No
## Yes 	43 	    4
## No 	8 	    45
## Does it appear that the self report impact of the medication is independent from one week to the next? (Test using the relevant chi-squared test.)
dat <- matrix(c(43, 8, 4, 45), 2)
chisq.test(dat) ## significant, not independent => reject chi-square test of independence

## Q6: A researcher is studying migration patterns. She collected the location of the current and previous homes for subjects who moved across regions (Northeast, Souteast and West). She recorded the following:
## 	     NE 	SE 	    W     Total
## NE 	  - 	267 	255   522
## SE 	135 	_ 	    139   274
## W 	240 	234 	-     474
##      375     501     349   1270
## Here the row is current home region and the column is the region the person moved to.
## Here the diagonals are not included since she only studied subjects who moved between regions. She would like to know if the probability of moving from region a to b is the same as the probability of moving from region b to a for all regions a and b.
## What can be said about the expected cell counts?

## average of asymmetric opposites


## Q7: Standard decks of playing cards have 13 cards of each suit (diamonds, clubs, hearts, spades) for a total of 52 cards. Someone gives you a 52 card deck. You draw a card, record its suit, replace the card, shuffle the deck and repeat that process 200 times, obtaining the following table
## Diamonds 	Clubs 	Hearts 	Spades
## 46 	         54 	49 	     51
## Does the distribution of suits appear to be standard?
dat <- matrix(c(46, 49, 51, 54, 154, 151, 149, 146), ncol = 2)
chisq.test(dat)
## fail to reject GOF test, cannot reject that deck is standard

## Q8: Consider the table below comparing the self reported job stress levels of three occupations. 100 people from each of three occupations were surveyed.
##  Job 	High 	Low
## Exec 	 65 	35
## Prof 	 70 	30
## Lion.ta 	15 	    85
## Researchers are interested in whether or not the perception of job stress differs by occupation. Using the relevant chi-sqared test. What can be said about the researcher's hypothesis?
dat <- matrix(c(65, 70, 15, 35, 30, 85), ncol = 2)
chisq.test(dat) ## reject, stress levels appear to differ
