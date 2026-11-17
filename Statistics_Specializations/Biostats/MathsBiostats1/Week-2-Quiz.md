
### Question 1

You meet a person at the bus stop and strike up a conversation. 
In the conversation, the person gives the strange answer that at least one of his two children is a girl. 
Thinking on this, you decide to do a probability calculation. 
Assuming only that genders are iid with 50% probability each, what is the chance of a two child family having two girls given the information that at least one is a girl?

* 1/2
* 1/3
* 1
* 1/4
* 0
* 2.

------------------------------------------------------------------------------------------------

### Question 2

A web site (www.medicine.ox.ac.uk/bandolier/band64/b64-7.html) for home pregnancy tests cites the following: "When the subjects using the test were women who collected and tested their own samples, the overall sensitivity was 75%. Specificity was also low, in the range 52% to 75%." Suppose a subject has a positive test. Assume the lower bound for the specificity. What number is closest to the multiplier of the pre-test odds of pregnancy to obtain the post-test odds of pregnancy given a positive test result?



* 2
* 2.5
* 1.5
* 1
* 0.5
* 0


------------------------------------------------------------------------------------------------

### Question 3
A web site (www.medicine.ox.ac.uk/bandolier/band64/b64-7.html) for home pregnancy tests cites the following: "When the subjects using the test were women who collected and tested their own samples, the overall sensitivity was 75%. Specificity was also low, in the range 52% to 75%." Assume the lower value for the specificity. Suppose a subject has a positive test and that 30% of women taking pregnancy tests are actually pregnant. What number is closest to the probability of pregnancy given the positive test?

1 point

90%


20%


40%


50%


10%


30%


70%


60%


80%

----------------------------------------------------------------------------------------------------------------
### Question 4
Let $X_1\ldots X_K$
  be independent Poisson counts with means t_i \lambdat 
i
 λ for some known value t_it 
i
 . Recall the Poison mass function with mean \muμ is

 \frac{\mu^x e^{-\mu}}{x!}  
x!
μ 
x
 e 
−μ
 
 

for $x = 0,1,\ldots$. What is the maximum likelihood estimate for \lambdaλ?

1 point

 (\sum_{k=1}^K t_k) / (\sum_{k=1}^K x_k )  (∑ 
k=1
K
 t 
k
 )/(∑ 
k=1
K
 x 
k
 )


 (\sum_{k=1}^K x_k) / n (∑ 
k=1
K
 x 
k
 )/n


 (\sum_{k=1}^K x_k ) \times (\sum_{k=1}^K t_k) (∑ 
k=1
K
 x 
k
 )×(∑ 
k=1
K
 t 
k
 )


 (\sum_{k=1}^K x_k ) / (\sum_{k=1}^K t_k) (∑ 
k=1
K
 x 
k
 )/(∑ 
k=1
K
 t 
k
 )

---------------------------------------------------------------------------------
### Question 5
Suppose that a person is flipping  a biased coin with success probability pp. She flips the coin 1010 times yielding 11 head. 
Consider two possibilities: 1) the person planned on flipping the coin ten times and got one head, 2) the person planned to flip the coin until the first head and it took ten times. What can you say about the likelihood in these two circumstances?

1 point

The likelihoods are different (up to constants of proportionality) depending on which case is true.


You can't calculate a likelihood in setting 2.


The likelihood associated with pp is identical (up to constants of proportionality)  in either case.


You can't calculate a likelihood in setting 1.


------------------------------------------------------------------------------------------------

### Question 6
Let XX be a uniform random variable with support of length 1, but where we don't know where it starts. So that the density is

 f(x) = 1  f(x)=1

for x \in (\theta, \theta + 1)x∈(θ,θ+1) and 00 otherwise. We observe a random variable from this distribution, say x_1x 
1
 . What does the likelihood look like?

1 point

A diagonal line from x_1x 
1
  to x_1+1x 
1
 +1.


A point at x_1x 
1
 .


A parabola.


A horizontal line between x_1x 
1
  and x_1-1x 
1
 −1.


------------------------------------------------------------------------------------------------

### Question 7

Suppose that diastolic blood pressures (DBPs) for men aged 35-44 are normally distributed with a mean of 80 (mm Hg) and a standard deviation of 10. 
What is the probability that a random 35-44 year old has a  DBP less than 70?

* About 50%
* About 68%
* About 16%
* About 1%
* About 34%
* About 2.5%

------------------------------------------------------------------------------------------------

### Question 8

Brain volume for adult women is normally distributed with a mean of about 1,100 cc for women with a standard deviation of 75 cc. 
About what brain volume represents the 95th percentile? 

* 1220 cc
* 1200 cc
* 1250 cc
* 1100 cc


------------------------------------------------------------------------------------------------

### Question 9
Return to the previous question. Brain volume for adult women is about 1,100 cc for women with a standard deviation of 75 cc. 
Consider the sample mean of 100 random adult women from this population. 
Around what is the 95th percentile of the distribution of that sample mean?

1 point

1112 cc


1223 cc


1130 cc


1110 cc


------------------------------------------------------------------------------------------------
### Question 10
Recall from an earlier question. 
Suppose that diastolic blood pressures (DBPs) for men aged 35-44 are normally distributed with a mean of 80 (mm Hg) and a standard deviation of 10.  
What's the probability that in a random sample of 5 subjects, 4 or more have DBPs more than 90?


* 1%
* 50%
* 5%
* 16%
* 0.29 %


------------------------------------------------------------------------------------------------
### Question 11

Consider two sample means, $\bar{X}{(1)}$ and $\bar{X}(2)$ from a the same normal population having mean zero and standard deviation $\sigma$. 
The first sample mean is based on $n_1$ observations while the second is based on $n_2$ observations. 
Take any percentile, say $100 \times \alpha$, for the distribution of sample means based on the two sample sizes excluding the median. 
What is the ratio of the two percentiles where it is the percentile of the first group divided by the second?

* $ \sqrt{n_2} / \sqrt{n_1}$
* ***Incorrect*** $ \sigma \sqrt{n_2} / \sqrt{n_1}$
* ***Incorrect*** $n_2 / n_1$
* $\sqrt{n_1} / \sqrt{n_2}  $
* ***Incorrect*** $ n_1 / n_2$
* ***Incorrect*** $\sigma \sqrt{n_1} / \sqrt{n_2}$
* ***TRY*** $1$

------------------------------------------------------------------------------------------------

### Question 12

You flip a fair coin 5 times, what's the probability of getting 4 or 5 heads?


* ***Correct*** About 19%
* About 25%
* About 6%
* About 11%

<pre><code>
> dbinom(0:5,5,0.5)
[1] 0.03125 0.15625 0.31250 0.31250 0.15625 0.03125
</code></pre>
------------------------------------------------------------------------------------------------

### Question 13

The respiratory disturbance index (RDI), a measure of sleep disturbance, for a specific population has a mean of 1515 (sleep events per hour) and a standard deviation of 1010. 

They are not normally distributed. Give your best estimate of the probability that a sample mean RDI of 100100 people is between 1414 and 1616 events per hour?


* Around 99%
* Around 95%
* Around 68%
* Around 90%

------------------------------------------------------------------------------------------------

### Question 14
Consider a standard uniform density. The mean for this density is .5 and the variance is 1 / 12. 

You sample 1,000 observations from this distribution and take the sample mean, what value would you expect it to be near?


* $1 / \sqrt{12 \times 1,000}$ 

* $1/\sqrt{12}$

* $1 / 12$

* $1/12$

* $0.5$


------------------------------------------------------------------------------------------------

### Question 15

Consider a standard uniform density. The mean for this density is .5 and the variance is 1 / 12. 
You sample 1,000 sample means where each sample mean is comprised of 100 observations. 
You take the standard deviation of the 1,000 sample means. About what number would you expect it to be?


* 1 / \sqrt{12 \times 1,000}
* 1 / 12
* 1 / \sqrt{12 \times 100}
* 1 / (12 \times 100)1/(12×100)


------------------------------------------------------------------------------------------------

### Question 16

Consider a standard uniform density. The mean for this density is .5 and the variance is 1 / 12. 
You sample 1,000 sample variances where each sample variance is comprised of 100 observations. 
You take the average of the 1,000 sample variances. 
What number would you expect that to be near?


* 1 / (12 \times 1,000)1/(12×1,000)


* 1 / \sqrt{12 \times 100}1/ 
12×100
 
* 1 / \sqrt{12}1/ 
12
 
* 1/12


* 1 / (12 \times 100)1/(12×100)


* 1 / \sqrt{12 \times 1,000}1/ 
12×1,000
 

------------------------------------------------------------------------------------------------
