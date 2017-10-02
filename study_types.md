# Study Types
>Describe the features of evidence-based medicine, including ~~levels of evidence (e.g. NHMRC),~~ meta-analysis, and systematic review

##Randomised Control Trial
A prospective randomised controlled trial is the **gold standard** of experimental research.

It involves allocating patients randomly to either an intervention or a reference (control) group, and measuring the outcome of interest. Allocation can be performed in three ways:
* Simple  
Individuals allocated randomly. This may lead to uneven group sizes.
* Block  
  Allocation is performed within blocks such that group sizes will remain close in size
* Stratified  
Groups are randomised within a category (i.e. men and women are randomised separately).

###Strengths
* Only study design which can establish causation
* Eliminates confounding   
Randomisation controls for both known and *unknown* confounding factors, as these should be randomly allocated between groups.
* Blinding can be performed in a standardised fashion
* Decreases selection bias

###Weaknesses
* Costly
* Time-consuming
* Not appropriate for all study designs
    * Ethical concerns  
    e.g. Adrenaline in ALS
    * Practical concerns  
    Small patient population or uncommon disease may cause recruitment difficulties


##Systematic Review
The process of evaluating all of the (quality) literature to answer a specific clinical question. This:
  * Does not necessarily involve statistical analysis  
  If it involves statistical analysis of multiple trials to generate a combined estimate of effect, it is known as a **meta-analysis**.

##Meta-analysis
Mathematical technique of combining the results of different trials to derive a single pooled estimate of effect. Can be performed by:
* Pooling the results of each trial  
* Combining all of the raw data and conducting a reanalysis


* Meta-analyses usually use **random-effects models**, which assumes there will be a variety of similar treatment effects
* Individual trials are **summarised with an odds ratio**, and **weighted**, usually predominantly by sample size


###Stages of a [meta-analysis] and systematic review:
1. Inclusion and exclusion criteria are predefined
2. Search: including online databases, reference lists, citations, and experts
3. Validation of potentially eligible trials (critique of interval validity, i.e. trial quality)
4. [Heterogeneity Analysis]
5. [Meta-analysis]
5. Reliability of result determined  
  i.e. Consistency accross studies, statistical significance, large effect size, biological plausibility.
6. Sensitivity analysis  
  Repeating the analysis with an alternative model, excluding borderline trials or outliers. If the result is unchanged, then the findings are **robust**.

###Heterogeneity
For the pooling of results to be valid, the trials need to be similar. Differences between trials is known as **heterogeneity**. Heterogeneity can be either:
* **Statistical**; where the effects of the intervention are more different than would be expected to occur through chance alone. Heterogenety analysis affects the type of model that can be used (**fixed** or **mixed effects**) and highly heterogenous data is not appropriate for meta-analysis.
* **Clinical**; where, due to trial design, it would be inappropriate to pool the results. For example, conducting a meta-analysis on the effects of the same drug in a paediatric and adult population would be inappropriate, as these are two different populations.
* **Methodological**; Where the methods used in different trials are too different to allow pooling of the data.

###Forest Plots
Results of meta-analyses are presented in a blobbogram, or more boringly, a **Forest Plot**.

<img src="resources\forest.svg">



Where:
* The **x-axis** plots the odds ratio, remembering that an OR of 1 indicates no difference
* The **y-axis** lists the studies included, and the overall summary statistic
* The **square** indicates the **point estimate** (from its x-location) and the **weight** given to the study (by its size)
* The **horizontal line** indicates the upper and lower bounds of the **confidence interval**
* The **diamond** indicates the **overall point estimate** and (by its width) the **confidence interval** for the point estimate
* The result of the heterogeneity test should also be displayed. P < 0.1 indicates significant heterogeneity.

###Funnel Plots
A graphical tool to detect publication bias. Due to statistical power, larger studies should be a closer representation of the true effect. When evaluating an number of studies, one would expect that large studies cluster around the 'true effect' and smaller studies to have more scatter.

###Strengths and weaknesses of meta-analyses
| Strengths | Weaknesses |
| -- | -- |
| Enhanced precision of estimates of effect | Publication bias |
| Useful when large trials have not been done or are not feasible | Duplicate publication |
| Generate clinically relevant measures (NNT, NNH) | Heterogeneity |
|  | Inclusion of outdated studies |

Because of these weaknesses, positive meta-analyses should be considered largely hypothesis-generating, and should be confirmed by (a large) RCT. Negative meta-analyses can probably be accepted.

---
##References
1. Myles PS, Gin T. Statistical methods for anaesthesia and intensive care. 1st ed. Oxford: Butterworth-Heinemann, 2001.
