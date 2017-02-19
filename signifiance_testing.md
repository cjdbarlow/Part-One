#Significance Testing'
> Understand concept of significance and testing of significance

Significance testing is:
* The process of determining whether a difference between groups in a study is due to a real difference, or chance alone
* Performed using p-values
* Does not imply clinical significance  
For a result to be statistically significant, there must be a 'real' difference between groups. This difference does not have to be clinically meaningful. E.g., a drug may reliably cause a 5mmHg decrease in SBP - this is unlikely to cause a meaningful drop in cardiovascular mortality.

##*P* Values
The ***p*-value** is the **probability of obtaining a summary statistic** (e.g. a mean) **equal to or more extreme than the observed result, *provided the null hypothesis is true***.

The *p*-value is commonly (mis)used in frequentist significance testing.
* Prior to performing an experiment, a significance threshold (α) is selected
    * Traditionally 0.05 (5%) or 0.01 (1%)  
    These values define the "false-positve rate".
        * When multiple tests are being performed on one set of data, the chance of a false-positive will increase
            * To reduce the chance of a false positive occurring, the significance threshold for each test can be reduced. One method of this is the Bonferroni correction, where α is divided by the number of tests being performed.
* Performs the experiment, and calculates a value for *p*  
If *p* < α, it suggests that the results are inconsistent with the null hypothesis (at that significance level), and it should be rejected. 

###Problems with *P*-values
*P*-values are, when employed correctly, are useful. Unfortunately, they are often misused. In no particular order, here are some of the traps:
* Assume the null hypothesis is true  
The *p*-value assumes that there is no real difference between groups.
    * This may not be the case
    * Not all hypotheses are created equal  
    There may be significant evidence in favour of H<sub>A</sub> - this will be ignored when interpreting a *p*-value.
        * Any study with significant results must therefore be interpreted in the context of:
            * Biological plausibility of those results
            * The previous evidence on the topic
            
            
* A threshold of 0.05 is not always appropriate  
The cost of being wrong must be included when interpreting a p-value. If this is a true result, what are the potential benefits? If this is a false positive, what are the potential harms?


* Vulnerable to multiple comparisons  
Conducting repeated analyses will eventually find a 'significant' result. At an α of 0.05, we would expect 1/20 analyses to be a false positive. Conducting 20 analyses would therefore generate one false positive result. 

* Does not quantify effect size  
A significant *p*-value simply suggests a difference exists, it does not measure how big this difference is.
    * A result may be statistically significant but clinically unimportant, e.g. an antihypertensive medication causing a decrease in SBP by 2mmHg may be statistically significant, but clinically unimportant.
    
* Related to sample size
*p*-values are affected by sample size:
    * A large effect size may be hidden by an insigificant *p*-value if sample size is small
    * Similarly, a tiny effect size may be detected (i.e. a significant *p*-value) if sample size is large

##References
http://www.tandfonline.com/doi/full/10.1080/00031305.2016.1154108
    