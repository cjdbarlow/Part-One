#Statistical Tests
> Describe the appropriate selection of non-parametric and parametric tests and tests that examine relationships (e.g. correlation, regression)

##Parametric Tests
Parametric tests are used when data is:
* Continuous and numerical
* Normally distributed
    * Remember that due to the central limit theorem - large data sets (n > 100) are typically amenable to parametric analysis, as sample means will follow a normal distribution
    * Non-normal data can be transformed so that they follow a normal distribution
* Samples have the same variance
* Observations within the group are independent  
Independent results are those when one value is not expected to influence another value.
    * A common example is repeated measures: when serial measures are taken from a patient or a hospital, the results cannot be treated as independent.
    * **Paired tests** are used when two dependent samples are compared
    * **Unpaired test** are used when two independent samples are compared

Common parametric tests include:
###Z test
Used to test whether the mean of a particular sample (x̄) differs from the population mean (μ) by random variation.

Assumptions:
* Large sample  
n > 100.
* Data is normally distributed
* Population standard deviation is known

A **two-tailed test** evaluates whether the sample mean is significantly greater or less than the population mean. A **one-tailed test** only evaluates the relationship in one direction.

###Student's T Test
This is a variant of the Z test, used when the population standard deviation is not known.
* The results from T test approximate the results of the Z test when n > 100

###F Test
Compares the ratio of variances ($$Var_1 \over Var_2$$) for two samples. If F deviates significantly from 1, then there is a significant difference in group variances.


Non-parametric tests:
* Do not assume the data follows any particular deviation  
This is required when:
    * Non-normality is obvious  
    e.g. Multiple observations of 0
    * Possible non-normality  
    Typically small sample sizes.
    * Data is ordinal
* Do not require measurement of population parameters
* Not as powerful as parametric tests (a larger sample size is required to achieve the same error rate)
* More broadly applicable than parametric tests as do not require the same assumptions

Logistic regression
Mann Whitney U
Wilcoxon Signed Rank
Spearman correlation


