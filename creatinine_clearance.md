#Measurement of GFR
> Describe the principles of measurement of glomerular filtration rate ~~and renal blood flow~~

Renal clearance of a substance quantifies the effectiveness of kidneys in excreting substances. The definition of clearance is the *volume* (typically of plasma) cleared of a drug per unit time. Renal clearance can therefore be expressed as:

$$Cl = { U_C.U_Q \over P_C}$$, where:
* $$Cl$$ = Clearance
* $$U_C$$ = Urine concentration
* $$U_Q$$ = Urine flow rate
* $$P_C$$ = Plasma concentration

##Clearance and GFR
As the elimination of most substances is dependent on glomerular filtration, clearance of a substance can be used to estimate GFR. Methods include:
* **Inulin**  
Inulin is a naturally occurring polysaccharide.
    * Inulin clearance accurately measures GFR as it is:
        * Freely filtered by the glomerulus
        * Not secreted at the tubules
        * Not reabsorbed
    * However, inulin is not produced by the body and so must be given by IV infusion  
    This limits its clinical utility.
* **Creatinine**  
Creatinine is a byproduct of muscle catabolism.
    * Creatinine is used clinically to measure renal function because it is:
        * Produced at a relatively constant rate  
        Factors affecting creatinine production include:
            * Race
            * Muscle mass
                * Age
                * Sex
            * Diet
        * Not metabolised
        * Freely filtered by the glomerulus
        * Minimally secreted  
        As GFR falls the *proportion* of creatinine secreted by renal tubules increases, so plasma creatinine will overestimate GFR when GFR is low.
        * Not reabsorbed
    * GFR can be approximated by creatinine clearance  
    This is given by the equation: $$GFR \approx Cl_{Cr} = {U_{[Cr]}.U_Q \over P_{[Cr]}}$$
    
    


###Serum Creatinine{#cr}
This formula demonstrates that **GFR is inversely proportional to serum creatinine** concentration.
* **This is only true when both creatinine production and glomerular filtration are at steady-state**  
A sudden drop in glomerular filtration (e.g. aortic cross-clamp) will not result in an immediate rise in creatinine.
    * During acute changes in GFR, serum creatinine will underestimate GFR until a new steady state is reached  
    Creatinine must be produced and not eliminated for it to rise.


<img src="\resources\gfr-vs-creatinine.svg">

###Estimating Creatinine Clearance
Using the above formula requires measurement of urine volume. This is:
* Typically performed by taking a 24 hour urine collection
* Tedious, and so creatinine clearance is often estimated  
A common method is the **Cockcroft-Gault formula**, which has a correlation of ~0.83 with creatinine clearance:  
$$Cl = {1.2 \times (140-A) \times W  \times S \over Cr}$$, where:
    * $$Cl$$ = Clearance
    * $$A$$ = Age
    * $$S$$ = Sex coefficient (Male = 1, Female = 0.85)
    * $$Cr$$ = Creatinine in µmol.L<sup>-1</sup>

Alternative formulas are **MDRD** and **CKD-EPI**. These equations have two advantages of Cockcroft-Gault:
* They are better predictors of GFR
* They do not require weight, and so can be calculated by the laboratory automatically  Other required data (e.g. age) can be taken from hospital records.

These estimates have similar weaknesses to the above:
* Dependent on serum creatinine, which can be highly variable. Formulas are derived from average values of dependent variables, and so will be unreliable at extremes of:
    * Age
    * Muscle mass
    * Critically ill
    * Malignancy
    * Diet

---
##References
1. Hall, JE, and Guyton AC. Guyton and Hall Textbook of Medical Physiology. 11th Edition. Philadelphia, PA: Saunders Elsevier. 2011. 
2. Cockcroft DW, Gault MH. [Prediction of Creatinine Clearance from Serum Creatinine](http://www.karger.com/Article/Abstract/180580). Nephron 1976;16:31-41
3. Levey AS, Stevens LA, Schmid CH, Zhang YL, Castro AF 3rd, Feldman HI, Kusek
JW, Eggers P, Van Lente F, Greene T, Coresh J; CKD-EPI (Chronic Kidney Disease 
Epidemiology Collaboration). [A new equation to estimate glomerular filtration 
rate](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC2763564). Ann Intern Med. 2009 May 5;150(9):604-12.
2. MD Calc - [Cockcroft-Gault Equation](https://www.mdcalc.com/creatinine-clearance-cockcroft-gault-equation#about-equation).
3. NIDDK. [Estimating Glomerular Filtration Rate (GFR)](http://www.niddk.nih.gov/health-information/health-communication-programs/nkdep/lab-evaluation/gfr/estimating/Pages/estimating.aspx#the-ckd-epi-equation)