#Evidence-Based Medicine {#id}
>Describe the features of evidence-based medicine, including levels of evidence (e.g. NHMRC)~~, meta-analysis, and systematic review~~

### What is Evidence-Based Medicine?

* Evidence-based medicine (EBM) is **"the conscientious, explicit, and judicious use and appraisal of current best evidence in making decisions about the care of individual patients."**[^1]
* The purpose of EBM is to provide a framework for acquiring knowledge and making optimal decisions around medical care. It means integrating **individual clinical expertise with the best available external clinical evidence** from systematic research."[^2]

There are five stages of EBM [^1]:
1. Ask an answerable question  
2. Search
3. Critically appraise the evidence
4. **Integrate the evidence with the patients unique circumstances** and values
5. Evaluate the result

###Levels of Evidence
Levels of evidence grade studies on liklihood of bias and internal validity. The NHMRC defines 6 levels of evidence, graded from I-IV (with three level III subtypes).[^3]

*In general*:
* Level I is evidence from a **systematic review** of RCTs
* Level II is evidence from **at least one good RCT**
* Level III-1 is evidence from a **pseudo-RCT**
* Level III-2 is evidence from a **comparative study *with* concurrent controls**, such as a cohort or case-control study
* Level III-3 is evidence from a **comparative study *without* concurrent controls**, such as a cohort study with historical controls
* Level IV is evidence from a case-series

Note that expert opinion is **not** part of NHMRC levels of evidence, though it is included on the Oxford Centre for Evidence Based Medicine system, used by the NHS.

| Level | Intervention | Diagnostic Accuracy | Prognostic | Aetiology | Screening |
| -- | -- | -- | -- | -- | -- |
| I | A systematic review of level II studies | A systematic review of level II studies | A systematic review of level II studies | A systematic review of level II studies | A systematic review of level II studies |
| II | A randomised controlled trial | A study of test accuracy with: an independent, blinded comparison with a valid reference standard, among **consecutive persons** with a defined clinical presentation | A prospective cohort study | A prospective cohort study | A randomised controlled trial |
| III-1 |A pseudorandomised controlled trial | A study of test accuracy with: an independent, blinded comparison with a valid reference standard, among **non-consecutive** persons with a defined clinical presentation | All or none | All or none | A pseudorandomised controlled trial |
| III-2 | A comparative study with concurrent controls| A comparison with reference standard that does not meet the criteria required for Level II and III-1 evidence | Analysis of prognostic factors amongst persons in a single arm of a randomised controlled trial | A retrospective cohort study | A comparative study with concurrent controls |
| III-3 | A comparative study without concurrent controls | Diagnostic case-control study | A retrospective cohort study | A case-control study | A comparative study without concurrent controls |
| IV | Case series with either post-test or pre-test/post-test outcomes | Study of diagnostic yield (no reference standard) | Case series, or cohort study of persons at different stages of disease | A cross-sectional study or case series | Case series |

###Grades of evidence
Evidence is graded to "indicate the strength of the body of evidence underpinning a recommendation"[^3] (e.g. in a clinical guideline). The NHMRC grades recommendations from A to D as follows:

**A.** Body of evidence can be trusted to guide practice.  
**B.** Body of evidence can be trusted to guide practice, in most situations.  
**C.** Body of evidence provides some support, but care should be taken in its application.  
**D.** Body of evidence is weak and recommendation must be applied with caution.

##Study types: Systematic Reviews and Meta-analyses
###Systematic Review
Process of evaluating all of the (quality) literature to answer a specific clinical question. Does not necessarily involve statistical analysis. If it involves quantitative analysis of multiple trials, it is known as a **meta-analysis**.

###Meta-analysis
Mathematical technique of combining the results of different trials to derive a **single pooled estimate of effect**. Can be done by:
  * Pooling the results of each trial
  * Pooling all of the raw data and conducting a reanalysis

* Meta-analyses usually use **random-effects models**, which assumes there will be a variety of similar treatment effects
* Individual trials are **summarised with an odds ratio**, and **weighted**, usually predominantly by sample size

####Stages of a [meta-analysis] and systematic review:
1. Inclusion and exclusion criteria are predefined
2. Search: including online databases, reference lists, citations, and experts
3. Validation of potentially eligible trials (critique of interval validity, i.e. trial quality)
4. [Heterogeneity Analysis]
5. [Meta-analysis]
5. Reliability of result determined  
  i.e. Consistency accross studies, statistical significance, large effect size, biological plausibility.
6. Sensitivity analysis  
  Repeating the analysis with an alternative model, excluding borderline trials or outliers. If the result is unchanged, then the findings are **robust**.

####Heterogeneity
For the pooling of results to be valid, the trials need to be similar. Differences between trials is called **heterogeneity**, and is important because:
* Heterogeneity analysis affects the type of model that can be used (**fixed** or **mixed effects**)
* Highly heterogenous data is not appropriate for meta-analysis.

Heterogeneity is divided into:
* **Statistical Heterogeneity**  
The effects of the intervention are more different than would be expected to occur through chance alone. 
* **Clinical Heterogeneity**  
Due to trial design it would be inappropriate to pool the results.
  * E.g., conducting a meta-analysis on the effects of the same drug in a paediatric and adult population may be inappropriate, as these two trials had different inclusion criteria. 
* **Methodological Hetreogeneity**  
Where the methods used in different trials are too different to allow pooling of the data.

####Forest Plots
Results of meta-analyses are presented in a blobbogram[^5], or more boringly, a **Forest Plot**.
!["Generic forest plot" by James Grellier - Own work. Licensed under CC BY-SA 3.0 via Commons](https://i.imgur.com/mkjR8px.png) [^6]
Where:
* The **x-axis** plots the odds ratio, remembering that an OR of 1 indicates no difference
* The **y-axis** lists the studies included, and the overall summary statistic
* The **square** indicates the **point estimate** (from its x-location) and the **weight** given to the study (by its size)
* The **horizontal line** indicates the upper and lower bounds of the **confidence interval**
* The **diamond** indicates the **overall point estimate** and (by its width) the **confidence interval** for the point estimate
* The result of the heterogeneity test should also be displayed. P < 0.1 indicates significant heterogeneity.

####Funnel Plots
Funnel plots are a **graphical tool to detect publication bias**.
* Due to statistical power, larger studies should be a closer representation of the true effect.
* Therefore, when evaluating an number of studies, one would expect that large studies cluster around the 'true effect', and smaller studies to  scatter further.
* A graph is then plotted of OR on the x-axis, and standard error on the y-axis 

<img src="http://i.imgur.com/r1dpJ7g.jpg =400x" alt="A high-fidelity rendering of funnel plots" style="width: 200px;"/>

* A. A funnel plot with evidence of publication bias.
* B. A funnel plot with no evidence of publication bias.

####Strengths and weaknesses of meta-analyses
| Strengths | Weaknesses |
| -- | -- |
| Enhanced precision of estimates of effect | Publication bias |
| Useful when large trials have not been done or are not feasible | Duplicate publication |
| Generate clinically relevant measures (NNT, NNH) | Heterogeneity |
|  | Inclusion of outdated studies |

Because of these weaknesses, positive meta-analyses should be considered largely hypothesis-generating, and should be confirmed by (a large) RCT. Negative meta-analyses can probably be accepted.[^4]

---
##References
 [^1]: Sacket DL, Richardson WS, Rosenberg W, Haynes RB. Evidence-based Medicine: How to practice and teach EBM. Churchill Livingstone, London 1997.  
[^2]: Sackett David L, Rosenberg William M C, Gray J A Muir, Haynes R Brian, Richardson W Scott. Evidence based medicine: what it is and what it isn't BMJ 1996; 312:71.  
[^3]: NHMRC. NHMRC additional levels of evidence and grades for recommendations for developers of guidelines. National Health & Medical Research Council, 2009. Available at: https://www.nhmrc.gov.au/_files_nhmrc/file/guidelines/stage_2_consultation_levels_and_grades.pdf/  
[^4]: PS Myles, T Gin. Statistical methods for anaesthesia and intensive care. 1st ed. Oxford: Butterworth-Heinemann, 2001.   
[^5]: Lalkhen, AG. "Statistics V: Introduction to clinical trials and systematic reviews". Accessible at: http://ceaccp.oxfordjournals.org/content/8/4/143.full.pdf  
[^6]: "Generic forest plot" by James Grellier - Own work. Licensed under CC BY-SA 3.0 via Commons - https://commons.wikimedia.org/wiki/File:Generic_forest_plot.png#/media/File:Generic_forest_plot.png