#Bolus and Infusion Kinetics
>Explain the concepts of intravenous bolus and infusion kinetics. To describe the concepts of effect-site and context sensitive half time.

##Continuous Rate Infusion with Bolus Dosing
If an infusion is started at the rate required to achieve the desired plasma concentration, it will take three time constants (4-5 half-lives) to reach this concentration. If the half-life is long, then achieving a therapeutic level may take some time. A bolus dose aimed to fill the Vd will allow steady-state to be reached immediately, i.e.:

$$ Loading \ dose = Vd.C_{target} $$


##Continuous Infusion Rate
Without a loading dose, the concentration of drug infused at a constant increases in a **negative exponential fashion**. Concentration will initially rise rapidly. Initially, distribution into peripheral compartments is (typically) the main method for drugs to leave plasma, as the concentration gradient between compartments is large.

Metabolism becomes increasingly important (over redistribution) in prolonged infusions as the concentration gradient between compartments falls. Steady state is achieved when concentrations in compartments are equal, and input is equivalent to clearance. Concentration at steady state is determined by the ratio of infusion rate to clearance:

$$ C = {Infusion \ Rate \over Clearance} $$

Therefore:

$$ Infusion \ Rate = C_{target}.Cl $$

This is only applicable for IV drugs. For drugs given by a route with  <100% bioavailability, the equation will be:

$$ Route \ Dosing \ Rate  = {Cld.C_{target} \over Bioavailability }$$

If the dosing is given intermittently, then:

$$Dosing \ Rate = Dose.Dose \ Interval$$

###Context-sensitive half time
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
 [^1]: Peck TE, Hill SA. Pharmacology for Anaesthesia and Intensive Care. 4th Ed. Cambridge University Press. 2014.  
 [^2]: Hill SA. Pharmacokinetics of Drug Infusions. Contin Educ Anaesth Crit Care Pain (2004) 4 (3): 76-80. Open Access, available at: http://ceaccp.oxfordjournals.org/content/4/3/76.full
 [^3]: Image credit: Hill SA. Pharmacokinetics of Drug Infusions. Contin Educ Anaesth Crit Care Pain (2004): Available at: http://ceaccp.oxfordjournals.org/content/4/3/76/F2.expansion.html. 