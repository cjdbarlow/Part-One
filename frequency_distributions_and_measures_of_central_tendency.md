#Frequency Distributions and Measures of Central Tendency
>Describe frequency distributions and measures of central tendency and dispersion

##Frequency Distributions
Frequency distributions are a method of tabulating or graphically displaying a number of observations.

###The Normal Distribution
The normal distribution is a **gaussian distribution**, where the majority of values cluster around the mean, and whilst more extreme values become progressively less frequent.

The normal distribution is common in medicine for two reasons.
* Much of the variation in biology follows a normal distribution
* When multiple random samples are taken from a population, the **mean of these samples follows a normal distribution, even if the characteristic being measured is not normally distributed**  
This is known as the **central limit theorem**.
  * It is useful because many statistical tests are only valid when the data follow a normal distribution

<object data="resources\normaldist.svg" type="image/svg+xml"></object>


The formula for the normal distribution is given by:

$$ f(x) = { 1 \over \sigma \sqrt2 \pi } e^{-(x - \mu )^2 \over 2 \sigma ^ 2} $$

From this, it can bet seen the two variables which will determine the shape of the normal distribution are:
* μ (mu): The mean
* σ (sigma): The standard deviation

#### The Standard Normal Distribution
The **standard normal distribution** is a normal distribution with a mean of 0 and a standard deviation of 1. The equation for the standard normal distribution is much simpler, which is why it is used.

$$ f(x) = {1 \over \sqrt2 \pi} e ^ {-x^2 \over 2} $$

Any normal distribution can be transformed to fit a standard normal distribution using a **z transformation**:

$$ z = {x - \mu \over SD} $$

The value of z then gives a **standardised score**, i.e. the number of standard deviations form the mean in a standardised curve. This can then be used to determine probability.


### Binomial distribution
Where observations belong to one of two mutually exclusive categories, i.e.:  
If $$ P(A) = x $$ then $$ P(B) = 1 - x $$

If the number of observations is very large and the probability of an event is small, a **poisson distribution** can be used to approximate a binomial distribution.

##Measures of Central Tendency
As noted above in the **normal distribution**, results tend to cluster around a central value. Quantification of the degree of clustering can be done using **measures of central tendency**, of which there are three:

* **Mode**  
The most common value in the sample.
* **Median**  
The middle value when the sample is ranked from lowest to highest.
  * The median is the best measure of central tendency when the data is **skewed**
* **Arithmetic mean**  
The average, i.e: $$ \bar{x} = {\sum x \ \over n} $$  
The mean is common and reliable, though inaccurate if the distribution is **skewed**.

##Measures of Dispersion
Measures of variability describe the degree of dispersion around the central value.

###Basic measures of deviation
* **Range**: The lowest and highest values in the sample  
  Highly influenced by outliers
* **Percentiles**: Rank observations into 100 equal parts, so that the median becomes the 50% percentile.  
  Better measure of spread than range.
* **Interquartile range**: The 25th to 75th centile  
  A **box-and-whisker plot** graphically demonstrates the mean, 25th centile, 75th centile, and (usually), the 10th and 90th centiles.
    * Outliers are represented by dots
    * Occasionally the range is plotted by the whiskers, and there are no outliers plotted
    
<object data="resources\boxplot.svg" type="image/svg+xml"></object>


###Variance and Standard Deviation
**Variance** is a better measure of variability than the above methods. Variance:
* Evaluates how far each observation is from the mean, and penalises observations more the further they lie from the mean
* **Sums the squares** of each difference and divides by the number of observations i.e:  
$$ s^2 = {\sum(x - \bar{x})^2 \over n - 1}$$
  * $$n-1$$ is used (instead of $$n$$) because the mean of the sample is known and therefore the last observation calculated must taken on a known quantity  
    * This is known as a **degrees of freedom**, which is a mathematical restriction used when using one statistical test in order to estimate another
    * It is a confusing topic best illustrated with an example:
      * You have been given a sample of two observations (say, ages of two individuals), and you know nothing about them
      * The degrees of freedom is **two**, since those observations can take on any value.
      * Alternatively, imagine you have been given the same sample, but this time I tell you that the mean age of the sample is 20
      * The degrees of freedom is **one**, since if I tell you the value of one of the observations is 30, you know that the other must be 10  
      Therefore, only one of the observations is free to vary - as soon as its value is known then the value of the other observation is known as well.

Different statistical tests may result in additional losses in degrees of freedom.

####Standard Deviation
The standard deviation is the **positive square root of the variance**.

In a sample of normal distribution:
* 1 SD either side of the mean should include ~68% of results
* 2 SD either side of the mean should include ~95% of results
* 3 SD either side of the mean should include ~99.7% of results

###Standard error and Confidence Intervals
**Standard error of the mean** is a measure of the precision of the estimate of the mean. It is calculated from the standard deviation and the sample size. As the sample size grows, the SEM decreases (as the estimate becomes more precise).

$$ SE = {SD \over \sqrt n } $$

It is used to calculate the **confidence interval**.

####Confidence Interval
The **confidence interval** gives a range in which the true population parameter is likely to lie. The width of the interval is related to the **standard error**, and the degree of confidence (typically 95%):
* $$ 95 \% \ CI \ of \  \bar{x} = \bar{x} \pm (1.96 \times  SE) $$
* $$ 99 \% \ CI \ of \  \bar{x} = \bar{x} \pm (2.58 \times SE) $$

The confidence interval is a function of the sample statistic (in this case the mean - different parameters have different equations), rather than the actual observations. 

The confidence interval has several benefits over the *p*-value:
* Indicates magnitude of the difference in a meaningful way
* Indicates the precision of the estimate  
The smaller the confidence interval, the more precise the estimate.
* Allows statistical significance to be calculated  
If the confidence interval crosses 1, then the result is insignificant.

---

##References
1. "Normal distribution". Licensed under Attribution 3.0 Unported (CC BY 3.0) via [SubSurfWiki](http://subsurfwiki.org/mediawiki/index.php?title=File:Normal_distribution.svg&page=1). 
2. PS Myles, T Gin. Statistical methods for anaesthesia and intensive care. 1st ed. Oxford: Butterworth-Heinemann, 2001  
[^3]: Course notes from "Introduction to Biostats", University of Sydney, School of Public Health, circa 2013.  