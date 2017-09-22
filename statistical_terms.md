#Statistical terms
>Understand the terms sensitivity, specificity, positive and negative predictive value and how these are affected by the prevalence of the disease in question

<!--></!-->

>Describe bias, types of error, ~~confounding factors and sample size calculations,~~ and the factors that influence them

All these terms refer to characteristics of **diagnostic tests**. The easiest way to approach this is via a 2x2 table, and has been recommended in previous exams as an approach to questions on this topic. 

##Types of Error
Draw a 2x2 table of disease state versus test outcome:

|  | Disease  Positive | Disease Negative |Total|
| -- | -- | -- ||
| **Test Positive** | True Positives | False Positives|All Test Positives|
| **Test Negative** | False Negatives| True Negatives |All Test Negatives|
|Total|All Disease Positives|All Disease Negatives||

* **True** or **false** refers to whether the test was **correct**
* **Positive** or **negative** refers to the **test result**


* A **Type I error** is a **false positive**, when we incorrectly reject the null hypothesis  
  * The type I error rate can be decreased by decreasing α
* A **Type II error** is a **false negative**, when we incorrectly accept the null hypothesis
  * The type II error rate can be decreased by decreasing β, usually expressed as increasing **power**  
  Power is the chance of detecting a difference if it exists. Power is equal to 1-β. 

##Sensitivity and Specificity
###Sensitivity
* **Sensitivity** is the probability those with the disease test positive, i.e. the **true positive rate**.  
* It refers to the ability of a test to **detect the condition**  
* A highly sensitive test will likely be positive if the condition is present
* Therefore, a **negative** result on a **sensitive test** gives a **high likelihood the disease is not present**
    * The mnemonic for this is **SNOUT** - Sensitive, Negative, rule OUT


* Sensitivity is the **true positive rate**, and can be expressed mathematically as:  
$$ Sensitivity = {True \ Positives \over All \ Disease \ Positives } = {True \ Positives \over True \ Positives \ + \ False \ Negatives}$$

###Specificity
* **Specificity** is the probability those without the disease test negative, i.e. the **true negative rate**
* It refers to the ability of a test to **detect *absence* of the condition**  
* A highly specific test will likely be negative if the condition is not present
* Therefore a **positive** result on a **specific test** gives a **high likelihood the disease is present**
  * The mnemonic for this is **SPIN** - Sensitive, Positive, rule IN


* Specificity is the **true negative rate**, and can be expressed mathematically as:  
$$ Specificity = {True \ Negatives \over All \ Disease \ Negatives } = {True \ Negatives \over True \ Negatives \ + \ False \ Positives} $$

##Positive and Negative predictive Values
* Positive and negative predictive values describe **the proportion of test results which are true**
* A high value indicates accuracy of the test
* Because of how they are derived,** they are dependent on population prevalence of the disease**


* **Positive Predictive Value** (PPV) is the probability that the **disease is present** when the **test is positive**:  
$$ Positive \ Predictive \  Value = {Disease \ Positives \over All \ Test \ Positives} = {Disease \ Positives \over Disease \ Positives \ + \ False \ Positives} $$


* **Negative Predictive Value** (NPV) is the probability that the **disease is absent** when the **test is negative**:  
$$ Negative \ Predictive \ Value = {Disease \ Negatives \over All \ Test \ Negatives} = {Disease \ Nevatives \over Disease \ Negatives \ + \ False \ Negatives} $$

###Remembering the Difference
* Rote learning these formulas is hard
* Remember that:
  * Sensitivity and specificity are **the same** for any given prevalence of disease  
  Therefore they look at columns (disease positive or disease negative).
  * PPV and NPV are not  
  Therefore they look at rows (test positive or test negative).

##Likelihood Ratios
The weakness of PPV and NPV as tools of evaluating the utility of a test in clinical practice is that they do not take into account the population prevalence, i.e. the *prior probability*, of a condition.

A classic example is the urine bHCG, which has a high positive predictive value for pregnancy. Tested on an exclusively male group however, the true positive rate will be 0 (since there are no pregnancies), and so all test positives will be false positives.

Therefore:
* The actual utility of a test in decision making is dependent upon the **prior probability** of the disease being present
* Likelihood Ratios relate the **pre-test odds** to the **post-test odds**  
They are useful because (unlike the above values) they do not assume that the patient you are applying them to is identical to the sample from which the statistic was derived.
* The likelihood ratio multipled by the pre-test odds gives the post-test odds of the disease being present
  * A **positive likelihood ratio** is used when the test is positive:  
  $$ LR(+) = {sensitivity \over 1 \ - \ specificity}$$
  * A **negative likelihood ratio** is used when the test is negative:  
  $$ LR(-) = {1 \ - \ sensitivity \over specificity} $$

---

##References  
1. Myles PS, Gin T. Statistical methods for anaesthesia and intensive care. 1st ed. Oxford: Butterworth-Heinemann, 2001.
2. Course notes from "Introduction to Biostats", University of Sydney, School of Public Health, circa 2013.