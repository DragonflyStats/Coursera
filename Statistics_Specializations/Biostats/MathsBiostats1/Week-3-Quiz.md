-------------------------------------------------------------------------------------------------------------
### Question 1
In a new population, a sample of 9 men yielded a sample average brain volume of 1,100cc and a standard deviation of 30cc. 
What is a 95% Student's T confidence interval for the mean brain volume in this new population?

* ***Correct*** About 1,077 to 1,123 cc
* ***Incorrect*** About 1,080 to 1,120 cc
* About 1,131 to 1,169 cc
* ***Incorrect*** About 1,092 to 1,108

-------------------------------------------------------------------------------------------------------------

### Question 2

A diet pill is given to 9 subjects over six weeks. The average difference in weight (follow up - baseline) is -2 pounds. 
What would the standard deviation have to be for the 95% T confidence interval to lie entirely below 0?

* ***Incorrect*** Around 2.5 pounds or less

* Around 2.2 pounds or less

* ***Incorrect***  Around 3.0 pounds or less

* Around 2.4 pounds or less

* Around 2.1 pounds or less

* ***Incorrect***  Around 2.6 pounds or less

* ***Incorrect*** Around 2.7 pounds or less

* ***Incorrect*** Around 2.9 pounds or less

* Around 2.3 pounds or less

* Around 2.0 pounds or less.

* ***Incorrect***  Around 2.8 pounds or less

-------------------------------------------------------------------------------------------------------------

### Question 3

Refer to the previous question. The interval would up being [-3.5, -0.5] pounds. What can be said about the population mean weight loss at 95% confidence? 


* We can not rule out the possibility of no mean weight loss at 95% confidence.
* ***incorrect*** There is support of mean weight gain at 95% confidence.
* ***Correct*** There is support at 95% confidence of mean weight loss.
* We can not rule out the possibility of mean weight gain at 95% confidence. 

-------------------------------------------------------------------------------------------------------------
### Question 4

In an effort to improve efficiency, hospital administrators are evaluating a new triage system for their emergency room. 
In an validation study of the system, 5 patients were tracked in a mock ER under both the new and old triage system. 
Their waiting times were recorded. Would it be better to use an independent group or paired T confidence interval in this setting?


* ***Incorrect*** Independent group interval
* ***Correct*** A paired interval

-------------------------------------------------------------------------------------------------------------
### Question 5

Refer to the setting of the previous question. 

To further test the system, administrators selected 20 nights and randomly assigned the new triage system to be used on 10 nights and the standard system on the remaining 10 nights. 
They calculated the nightly median waiting time (MWT) to see a physician. The average MWT for the new system was 3 hours with a variance of 0.60 while the average MWT for the old system was 5 hours with a variance of 0.68. Give a 95% confidence interval estimate for the differences of the mean MWT associated with the new system. Assume a constant variance.


* ***Incorrect*** A mean decrease of between 3.68 and 0.32 hours.
* A mean decrease of between 2.60 and 1.40 hours. 
* ***Correct*** A mean decrease of between 2.75 and 1.25 hours.

-------------------------------------------------------------------------------------------------------------
### Question 6

Suppose that you create a 95% T confidence interval. You then create a 90% interval using the same data. 
What can be said about the 90% interval with respect to the 95% interval?

* ***Correct*** The interval will be narrower.
* ***Incorrect*** The interval will be the same width.
* The interval will be wider. 
* The interval will be centered at a different number.


-------------------------------------------------------------------------------------------------------------

### Question 7

Let distribution 1 be $N(\mu_1, \sigma_1^2)$ and distribution 2 be $N(\mu_2,\sigma_2^2)$.  
Let $x_{1,\alpha}$ and $x_{2,\alpha}$  be the $\alpha^{th}$ quantile from the two distributions, respectively. 
  
How are the two mathematically related?

* There is no closed form relationship.
* They are related via a parabola $$x_{1,\alpha} = x_{2,\alpha}^2$$
* ***Correct*** They are related as a line $$x_{2,\alpha} =  \mu_2 - \frac{\sigma_2}{\sigma_1} \mu_1 + \frac{\sigma_2}{\sigma_1}x_{1,\alpha}$$
* ***Incorrect*** They are related by the identity line $$x_{1,\alpha} = x_{2,\alpha}$$
 

---------------------------------------------------------------
### Question 8
Consider data points $x_1,\ldots, x_n$. Imagine a probability mass function, so that a random variable XX from this distribution has

$$ P(X = x_i) = p(x_i) = \frac{1}{n}. $$

This is the so-called bootstrap distribution. What is the mean of the bootstrap distribution?


* It equals 1
* The sample median of the data
* ***Incorrect*** The sample variance of the data
* ***Correct*** The sample mean of the data


-------------------------------------------------------------------------------------------------------------
### Question 9

Suppose we were to simulate a large number of standard normal random variables and a large number of exponential random variables. 
What would a plot of the exponential quantiles (horizontal axis) versus the standard normal quantiles (vertical axis) look like? 
Let $\Phi$ be the standard normal distribution function.

* ***Incorrect*** It will look like the function $$f(x) = -\Phi^{-1}(-\log(1 - x))$$ for $0\leq x \leq 1$.
* ***Correct*** It will look like the function  $$f(x) = \Phi^{-1}(1 - e^{-x})$$ for $x \gt 0$.
* It will look like the function $f(x) = x$ for $0 \lt x$
* ***Incorrect*** It will look like a straight line

-------------------------------------------------------------------------------------------------------------
### Question 10

Let $F(x)$ be a distribution function. Notice that $G(x) = F(a^2x + b)$ is also a distribution function for $a \neq 0$. 
If you were to take large samples from $F$ and $G$, what must the QQ plot look like without knowing the specific values of $a$ and $b$?


* ***Correct*** A line.
* ***Incorrect*** An identity line.
* The function $H(x) = F(a^2 F^{-1}(x) + b)$ for $0\leq x \leq 1$.
* A parabola.


-------------------------------------------------------------------------------------------------------------

### Question 11
                                                             
Let your data be the two points $\{1, 3\}$.  What is the bootstrap distribution of the sample mean?


* ***Incorrect*** The distribution puts probability1/2 on the numbers 1 and 3 both.
* The distribution puts probabilities 1/4 and 3/4 on 1 and 3, respectively.
* ***Correct*** The distribution puts probabilities 1/4, 1/2 and 1/4 on the numbers 1, 2 and 3, respectively
