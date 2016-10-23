#Risk and Odds
> Understand the concepts of risk and Odds Ratio

##Risk
* **Absolute Risk** is the risk of an event occurring in the exposed group
* **Relative Risk** (or risk ratio) is the risk of an event occurring in the exposed group relative to the unexposed group.  
  $$ Relative \ Risk = {Risk \ in \ Exposed \ \over Risk \ in \ Unexposed} = \$$$${Exposed \ individuals \ with \ outcome \over Number \ of \ exposed }\over {Unexposed \ individuals \ with \ outcome \over Number \ of \ unexposed} $$


* **Absolute Risk Reduction** is the decrease in risk provided by an exposure: 
  $$ ARR = Risk \ in \ Exposed \ - \ Risk \ in \ Unexposed $$  
  Is a clinical useful measure of the value of an intervention, however is better expressed as:
    * **Number Needed to Treat (NNT)** is the number of individuals who must receive a treatment to prevent one event.  
  $$ NNT = {1 \over ARR} $$
* **Relative Risk Reduction** is the decrease in incidence provided by treatment.
  It is not as useful a measure of the value of an intervention, but companies like it because the numbers are bigger than ARR.

##Odds
* **Odds** are the probability of an event happening compared to the probability of it not happening, usually expressed as a fraction
* The **Odds Ratio** is the ratio of the odds of the outcome occurring in the exposed compared to the odds of it occurring in the unexposed  
  $$ OR = {Odds \ of \ the \ outcome \ in \ the \ exposed \over Odds \ of \ the \ outcome \ in \ the \ unexposed} $$
  * An OR < 1 suggests the risk is lower in the exposed group
  * An OR > 1 suggests the risk is higher in the exposed group
  * An OR = 1 suggests that the groups are equivalent



* In general, the OR overstates risk compared to the RR.
* It is approximately equal to the RR when the outcome is rare (<10%)
* It is used when:
    * The denominator is uncertain, i.e.:
        * In retrospective designs, such as case-control studies when patients with the disease were identified, and then exposures ascertained
    * When it statistically appropriate (ORs are much easier to use in statistical tests), i.e.:
        * Multivariable regression
        * Systematic Reviews

##Risk versus Odds
**Relative Risk** and **Odds Ratios** are both methods of comparing the likelihood of an outcome occurring between two groups. The difference, and particularly the concept of odds ratios, are **commonly confused**. Relative risk tends be much more intuitive than odds ratios. Imagine a trial has been performed, where group A was exposed group[^3]:
* In group A, the mortality was 50%
* In group B, the mortality was 25%

The **relative risk** is intuitive: $$ RR = {Risk \ of \ death \ in \ exposed \over Risk \ of \ death \ in \ unexposed} = {0.5 \over 0.25 }= 2  $$

The **odds ratio** is not: $$ OR = {Odds \ of \ death \ in \ exposed \over Odds \ of \ death \ in \ unexposed } = {1/1 \over 1/3 } = 3 $$

A RR of 2 is intuitive, but the OR of 3 is not. Now, imagine another trial where:
* In group A, the mortality was 90%
* In group B, the mortality was 10%

$$ RR = {Risk \ of \ death \ in \ exposed \over Risk \ of \ death \ in \ unexposed} = {0.9 \over 0.1 }= 9  $$

$$ OR = {Odds \ of \ death \ in \ exposed \over Odds \ of \ death \ in \ unexposed } = {9/1 \over 1/9 } = 81 $$

The relative risk is 9, but the OR is 81!

So why use odds ratios at all? Odds ratios are required when research subjects are selected on the basis of outcome rather than the basis of exposure.[^3] Many statistical tests also require the use odds ratios because the log odds ratio has a normal distribution[^4].

Relative Risk has a weakness as well - it is dependent on how the question is framed. Using the first trial above, we calculated that RR for death was 2 and the OR was 3. Rather than calculating mortality, an alternative method could be to look at survival:
* In group A, the survival was 50%
* In group B, the survival was 75%

$$ RR = {Risk \ of \ survival \ in \ exposed \over Risk \ of \ survival \ in \ unexposed} = {0.5 \over 0.75 }= 0.6 \bar{6}  $$

$$ OR = {Odds \ of \ survival \ in \ exposed \over Odds \ of \ death \ in \ survival } = {1/1 \over 3/1 } = 1/3 $$

Note that the relative risk is not 0.5 (as you may initially assume), however the odds ratio is just the inverse of the previous value.

---

##References
 [^1]: PS Myles, T Gin. Statistical methods for anaesthesia and intensive care. 1st ed. Oxford: Butterworth-Heinemann, 2001.  
[^2]: Course notes from "Introduction to Biostats", University of Sydney, School of Public Health, circa 2013.  
[^3]: Steve Simon PhD. Odds ratio vs. relative risk. "Steve's Attempt to Teach Statistics (StATS)", Children's Mercy Hospital,  2006. Once available at: http://www.childrens-mercy.org/stats/journal/oddsratio.asp . Email me if you want the pdf.  
[^4]: Bland JM, Altman D. Bland J Martin, Altman Douglas G. The odds ratio BMJ 2000; 320 :1468. Available at: http://www.bmj.com/content/320/7247/1468.1