
--------------------------------------------------------------------

#### Question 1

<pre><code>
import numpy as np
import matplotlib.pyplot as plt
import matplotlib.mlab as mlab
import math

# Set a random seed for repeated computation
np.random.seed(123)

# Global constants - these are what we need to change
# This is my inital belief about the mean of the average IQ score on campus
</code></pre>

Reset
For this problem, we are going to be using the above code to recreate some of the mathematics behind the Introduction to Bayesian Statistics lecture. The math has already been worked out for you, so you will only have to manipulate code, but if you are curious of the math behind the update for the mean of a distribution, you can look here: https://en.wikipedia.org/wiki/Conjugate_prior. 

The math for this problem is located under the continuous distributions section where our model parameter is mu and we have a known variance sigma^2

Before we get started, we need to get some values. 

First, what is the mean of the prior that we are using?


#### Answer 

* The Correct Answer is 100
* We can see that 100 is the value assigned to <tt>prior_mean</tt>

--------------------------------------------------------------------

#### Question 2
What is the standard deviation of the prior?

1 / 1 point
10
Correct
This is the value that is assigned to prior_sigma

--------------------------------------------------------------------

#### Question 3
Let's say that we observe a person with an IQ of 125, as we did in the lecture. 
Which way should the posterior distribution, after our Bayesian update, shift?

1 / 1 point

* Left
* Right
* Stay the Same

Correct
That's right, the posterior should shift right to account for seeing data that was larger than the mean that my prior had

--------------------------------------------------------------------

#### Question 4
Now, lets say that I observe two more people and I see that they also have IQs of 110. So we have three people with IQs of 110. How does the variance of my estimate change from my prior? We can do this in the code by setting:

<pre><ocde>
new_data = [110, 110, 110]
</code></pre>


* **Correct** The variance decreases
* The variance increases
* The variance stays the same

#### Correct
The variance should decrease. If we run the code, we can see that the width of the distribution decreases indicating the variance of the estimate also decreased


--------------------------------------------------------------------

#### Question 5
What is the posterior mean after observing three people with an IQ of 110 in a row?

0 / 1 point
110
Incorrect
The correct answer is: 109.7087378640. We can get this answer by running the code   

--------------------------------------------------------------------

#### Question 6
If I observe now five people: the first three have an IQ of 110, and the last two have an IQ of 125, which of the following are true?

0 / 1 point

The posterior mean is the average of 110, 110, 110, 125, and 125

This should not be selected
We forgot to incorporate the mean of our prior into the mix - run the code and you will see this


The posterior mean is equal to 110


The posterior mean is equal to 100


The posterior mean is equal to 125


The posterior mean is equal to 115.717  

Correct
This is correct and what you would get if you ran the code


The posterior standard deviation is the same as the prior standard deviation 


The posterior standard deviation is greater than the prior standard deviation 

This should not be selected
  Our uncertainty, after seeing this data is less than the uncertainty in our prior  


The posterior standard deviation is less than the prior standard deviation


The posterior standard deviation is equal to 10


The posterior standard deviation is equal to 1.768 

Correct
This is correct


The posterior standard deviation is equal to 3