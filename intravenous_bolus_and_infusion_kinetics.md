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
The decline in effect site concentration when an infusion is stopped is a function of:
* Plasma concentration
* The rate constant for the effect compartment (**k<sub>e0</sub>**)

The decline in plasma concentration when an infusion is stopped is a function of:
* The **rate constant** for **elimination** from plasma (k<sub>10</sub>)
* The **amount of drug** in plasma
* Rate constants for distribution to peripheral compartments (k<sub>12</sub> and k<sub>13</sub>)
* The amount of drug in peripheral compartments
* Rate constants for redistribution back to plasma (k<sub>21</sub> and k<sub>31</sub>)


##Context-sensitive half time
Modeling the decline in plasma concentration on cessation of an infusion is complex, as it is dependent on multiple processes.

**Context-sensitive half time** describes the variability in plasma concentrations after ceasing an infusion. It is used because terminal elimination half-life has little clinical utility for predicting drug offset.

Context-sensitive half time is defined as the time for plasma concentration to fall to half of its value at the time of stopping an infusion. The "context" is the duration of infusion. It is dependent on:
* **Duration of infusion**  
  During an infusion, drugs distribute out of plasma into tissues. Following cessation, plasma drug is metabolised and tissue drug redistributes back into plasma. The longer an infusion, the more drug has distributed out of tissues, and the longer the redistribution phase will be. The longest context-sensitive half time occurs when an infusion is at steady-state.

* **Redistribution**  
  The maximal CSHT reached depends on the:
    * **V<sub>D</sub>ss**, i.e. the volume of distribution at steady state  
    Drugs with a largeer volume of distribution have a longer CSHT, as only a small proportion of the drug in the body will be in plasma and be available to be cleared.
    * **Rate constant for elimination**  
    Drugs with a smaller rate constant for elimination have a longer CSHT.

Drugs with longer context-sensitive half-times will wear off less predictably.

![Context-sensitive half times: from: Hill SA. Pharmacokinetics of Drug Infusions. Contin Educ Anaesth Crit Care Pain (2004)](http://i.imgur.com/tfPtCad.jpg)[^3]

> Propofol has a context sensitive half time of ~20 minutes.

<!--></!-->

> Remifentanil has little redistribution and small a small Vd in the peripheral compartments, and so has a very short context-**in**sensitive half time. It wears off reliably and quickly following cessation of infusion.

---

##References
Peck TE, Hill SA. Pharmacology for Anaesthesia and Intensive Care. 4th Ed. Cambridge University Press. 2014.  
Hill SA. Pharmacokinetics of Drug Infusions. Contin Educ Anaesth Crit Care Pain (2004) 4 (3): 76-80. Open Access, available at: http://ceaccp.oxfordjournals.org/content/4/3/76.full
Image credit: Hill SA. Pharmacokinetics of Drug Infusions. Contin Educ Anaesth Crit Care Pain (2004): Available at: http://ceaccp.oxfordjournals.org/content/4/3/76/F2.expansion.html. 