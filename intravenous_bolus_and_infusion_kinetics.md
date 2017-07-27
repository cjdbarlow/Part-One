#Bolus and Infusion Kinetics
>Explain the concepts of intravenous bolus and infusion kinetics. To describe the concepts of effect-site and context sensitive half time.

##Continuous Infusions
Plasma concentrations of an IV infusion are influenced by:
* Distribution
* Metabolism
* Elimination

###Onset of Continuous Rate Infusions
Without a loading dose, the concentration of drug infused at a constant increases in a **negative exponential fashion**:
* Plasma concentration initially rises rapidly
* **Distribution** into peripheral compartments is the **main method** for drugs to **leave plasma**  
This is because at the start of an infusion there is a large concentration gradient between plasma and peripheral compartments.
* Elimination becomes more important in prolonged infusions  
As peripheral compartments fill the concentration gradient between plasma and compartments falls, and redistribution becomes relatively less important.
* **Steady state** is achieved when **concentrations in compartments are equal**,** and input is equivalent to clearance**  
  * Concentration at steady state is determined by the ratio of infusion rate to clearance: $$ C = {Infusion \ Rate \over Clearance} $$
    * Therefore, at steady state with drugs with 100% bioavailability:  
    $$ Infusion \ Rate = C_{target}.Cl $$  
    * For drugs given by a route with less than 100% bioavailability:  
    $$ Route \ Dosing \ Rate  = {Cld.C_{target} \over Bioavailability }$$
    * If the dosing is given intermittently, then:  
    $$Dosing \ Rate = Dose.Dose \ Interval$$
  * **Volume of distribution** at **steady state** is termed **V<sub>D</sub><sup>ss</sup> and is the apparent volume into which a drug will disperse during a prolonged infusion, and is the sum of all compartment volumes in the model.

####Continuous Rate Infusions with Bolus Dosing
As seen, above starting an infusion at the rate required to maintain steady state is inefficient:
* For any desired plasma concentration, it will take three time constants (4-5 half-lives) for a continuous infusion to reach this concentration
  * If the half-life is long, then achieving a therapeutic level will take some time
* A bolus dose aimed to fill the V<sub>D</sub> will allow steady-state to be reached immediately:
$$ Loading \ dose = V_D.C_{target} $$

##Stopping an Infusion
For a bi-exponential model (i.e. only one peripheral compartment), decline in plasma concentration can be modelled by the equation $$ C = Ae^{- \alpha t} + Be^{- \beta t}$$. In this model:
* $$\alpha$$ is the time-constant for redistribution  
If an infusion has reached steady state, then 
* $$\beta$$ is the time-constant for **terminal elimination**
* Neither $$\alpha$$ or $$\beta$$ correspond to any rate constant, but give rise to the terms redistribution half-life (t<sub>1/2α</sub>) and terminal elimination half-life (t<sub>1/2β</sub>)

GRAPH PAGE 61 PECK AND HILL

Factors affecting rate of offset of an infusion can be classified into pharmacokinetic, pharmacodynamic, and other drug factors:
* **Pharmacokinetic factors**
  * Distribution
    * **V<sub>D</sub>**  
    High V<sub>D</sub> will decrease clearance from central compartment. Factors affecting V<sub>D</sub> include:
      * Ionisation  
      Ion trapping can cause drug to be sequestered.
      * Protein binding  
      * Lipid solubility
    * **Redistribution**  
    During an infusion, peripheral compartments become saturated with drug. When an infusion ceases, drug is redistributed central compartment.
      * This is related to **context-sensitive half time** (see below)
  * Metabolism
    * Route of clearance  
      * Organ-dependent
        * Organ failures
        * Extraction ratio
        * Organ blood flow
      * Organ-independent
      * Saturatable kinetics  
      Zero-order kinetics.
    * Presence of active metabolites
  * Elimination  
  Overlaps with metabolism.
    * Route of clearance of active drug or active metabolites
      * Organ failures
* **Pharmacodynamic Factors**
  * Age  
    * Fat  
    V<sub>D</sub>
    * CO  
    Organ blood flow.
    * Sensitivity  
    Dose required for effect and dose required for recovery.
  * Sex  
    * Fat
  * Co-morbidities
    * Organ failiures
    * Pregnancy
* **Other drug factors**  
  * Pharmacokinetic interactions
    * Enzyme inhibition/induction
  * Pharmacodynamic interaction
    * Drug tolerances
      * Tachyphylaxis
  * Drug action  
  Drugs which alter gene or receptor expression, or bind irreversibly (e.g. clopidogrel) may show ongoing effects even after the drug has left the system.
    

###Context-Sensitive Half-Time
**Context-sensitive half time** is:  
**Defined** as the time for plasma concentration to fall to half of its value at the time of stopping an infusion.
* A method to describe the variability in plasma concentrations after ceasing an infusion  
The "**context**" is the **duration of infusion**.
* Used because terminal elimination half-life has little clinical utility for predicting drug offset  
Half-lives are often misleading when discussing drug infusions.
* Dependent on:
  * **Duration of infusion**  
  During an infusion, drugs distribute out of plasma into tissues. When the infusion ceases, drug is cleared from plasma and tissue drug redistributes back into plasma.
    * The longer an infusion, the more drug has distributed out of tissues, and the longer the redistribution phase
    * The longest context-sensitive half time occurs when an infusion is at steady-state
  * **Redistribution**  
  The maximal CSHT reached depends on the:
    * **V<sub>D</sub><sup>ss</sup>**  
    Drugs with a larger V<sub>D</sub><sup>ss</sup>* have a longer CSHT, as only a small proportion of the drug in the body will be in plasma and be is able to be cleared.
    * **Rate constant for elimination**  
    Drugs with a smaller rate constant for elimination have a longer CSHT.

Drugs with longer context-sensitive half-times will wear off less predictably.

![Context-sensitive half times: from: Hill SA. Pharmacokinetics of Drug Infusions. Contin Educ Anaesth Crit Care Pain (2004)](http://i.imgur.com/tfPtCad.jpg)[^3]

* Remifentanil has little redistribution and small a small Vd in the peripheral compartments, and so has a very short context-**in**sensitive half time. It wears off reliably and quickly following cessation of infusion.

####Context-Sensitive Decrement Time
Context-Sensitive Decrement Times:
* Describe the time it takes for a drug level to fall to a particular percentage of its starting value following cessation of an infusion
* They are used because the half-times do not describe **monoexponential decay**  
i.e. The time taken for drug concentration to reach 25% of its starting value is not twice the context sensitive half-time.
* The context-sensitive half-time could also be described as the 50% context-sensitive decrement time 

---

##References
Peck TE, Hill SA. Pharmacology for Anaesthesia and Intensive Care. 4th Ed. Cambridge University Press. 2014.  
Hill SA. Pharmacokinetics of Drug Infusions. Contin Educ Anaesth Crit Care Pain (2004) 4 (3): 76-80. Open Access, available at: http://ceaccp.oxfordjournals.org/content/4/3/76.full
Image credit: Hill SA. Pharmacokinetics of Drug Infusions. Contin Educ Anaesth Crit Care Pain (2004): Available at: http://ceaccp.oxfordjournals.org/content/4/3/76/F2.expansion.html. 