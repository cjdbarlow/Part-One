#Metabolism
> Describe the mechanisms of drug clearance and metabolism.

Removal of drug from the body requires either:
* Metabolism of active drug to an inactive substance  
Typically by the liver, but other organs (kidney, lungs) also metabolise some substances.
* Excretion of active drug  
Often by the kidneys, but may also be in bile, or exhaled.
  * Removal of drugs from the body is achieved predominantly through renal excretion of water-soluble compounds
  * As many drugs are lipophilic, metabolism to water soluble compounds is required to clear drugs from the body


##Clearance
Clearance describes the elimination of drug from the body. Clearance is:
* The **volume of plasma completely cleared of a drug per unit time**  
Measured in ml.min<sup>-1</sup>.
  * Discussed further in [modelling](pharmacokinetic_modelling.md)
* Does not include redistribution
* Is calculated from the area under the concentration time curve:  
$$Cl = {Dose \over AUC}$$

Total clearance is the sum of clearances from individual organs, e.g.:  
* $$ Cl_{total} = Cl_{renal} + Cl_{liver} + Cl_{lung} + Cl_{organ \ independent} + Cl_{other}$$, where:
  * $$Cl_{renal} = {[U] \times V \over [P]}$$, where:
    * $$[U]$$ is urine concentration in mmol.L<sup>-1</sup>  
    Function of glomerular filtration, reabsorption, and secretion.
    * $$V$$ is the urine flow in ml.min<sup>-1</sup>
    * $$[P]$$ is the plasma concentration in mmol.L<sup>-1</sup>
  * $$Cl_{hepatic} = HBF \times ER_{liver}$$, where:
    * $$HBF$$ is the hepatic blood flow in ml.min<sup>-1</sup>
    * $$ER$$ is the extraction ratio
  


##Kinetics{#kin}
Drug clearance can follow either first order or zero-order kinetics:

* **First-order Kinetics**  
A constant **proportion** of the drug in the body is eliminated per unit time.
  * Most drugs are eliminated by first order kinetics, as the capacity of the elimination system exceeds the concentration of drug

<object data="resources\first-order-kinetics.svg" type="image/svg+xml"></object>


* **Zero-order kinetics**  
A **constant amount of drug** is eliminated per unit time, independent of how much drug is in the body.
  * Occurs when there is saturation of enzyme systems  
  It is also known as **saturation kinetics** for this reason.
    * e.g. Phenytoin follows first order kinetics at lower doses, but zero-order kinetics at doses within the therapeutic range  
    This is clinically relevant as the narrow therapeutic index means that toxic levels may occur rapidly with a small increase in dose.
    * e.g. Ethanol also follows zero-order kinetics within the "therapeutic range", as it is a very weak (doses are in grams) positive allosteric modulator of the GABA<sub>A</sub> receptor
  * Zero-order kinetics is concerning as:
    * Plasma concentrations will **rapidly increase** with only modest dose increase
    * There is essentially **no steady state**: if drug input exceeds output, plasma levels will continue to rise

<object data="resources\zero-order-kinetics.svg" type="image/svg+xml"></object>

###Michaelis-Menten
The Michaelis-Menten equation describes the transition from first order to zero order kinetics as drug concentration increases:

<object data="resources\michalis-menten.svg" type="image/svg+xml"></object>
* Metabolism increases proportionally with concentration as long as the concentration of drug leaving the organ of metabolism (e.g. in the hepatic vein) is less than half of the maximal concentration of drug that organ can metabolise
  * This is ~1/3<sup>rd</sup> of the maximal rate of metabolism


##Hepatic Metabolism
The principle organ of drug metabolism is the liver. Hepatic metabolism:
* Usually decreases the function of a drug, though:
  * **Prodrugs** have increased pharmacologically activity after liver metabolism
  * Some drugs have active or toxic metabolites
* Can be divided into **two phases**

###Phase I
Phase one reactions:
* Occur in the **endoplasmic reticulum**
* Improve water solubility by exposing a functional chemical group
* Typically occur prior to phase II reactions for most drugs
* Include:
  * **Oxidation**  
    Loss of electrons.
    * Main phase I reaction
    * CYP450 driven
  * **Reduction**  
    Gain of electrons.
    * CYP450 driven
  * **Hydrolysis**  
    Addition of a water molecule, which may result in two new compounds.
    * Esterase driven  
    Therefore rapid, high capacity, organ-independent elimination.
      * Butylcholinesterase
      * Non-specific plasma cholinesterase
      * RBC estearse

####CYP450 System
CYP450 enzymes are:
* A superfamily of enzymes vital in drug metabolism
* Named after the wavelength of light they absorb when:
  * Reduced
  * Combined with CO
* Located in:
  * Liver  
  Endoplasmic reticulum of hepatocytes.
  * Lungs
  * Kidney
  * Gut
  * Brain
* Over 1000 enzymes, with ~50 functionally active
* Classified by the degree of shared amino-acid sequence into:
  * Families  
  CYP1, CYP2, CYP3...
  * Subfamilies  
  CYP1A, CYP1B...
  * Isoforms  
  CYP1A1, CYP1A2...

|CYP2B6|CYP2C9|CYP2C19|CYP2D6|CYP2E1|CYP3A4|CYP3A5|
|--|
|Propofol|Propofol, Parecoxib, Warfarin|Diazepam, Omeprazole, Clopidogrel, Phenytoin|Codeine, Metoprolol, Flecainide|Volatile anaesthetic agents, parcetamol|Common benzodiazepines, Fentanyl, Alfentanil, Lignocaine, Vecuronium|Diazepam

Key CYP enzymes include:
* **CYP2E1**  
Metabolises volatiles and paracetamol.
* **CYP3A4**  
Responsible for 60% of metabolic activity.
* **CYP2D6**  
  * Important because genetic polymorphism leads to significant inter-patient variability  
  May result in significant over- or under-metabolism of drugs, and therefore significant inter-individual variability in response.
    * 5-10% of the population are poor metabolisers
    * 2-10% are intermediate metabolisers
    * 1-2% are ultra-rapid metabolisers
    * Bulk of the population (70-90%) are extensive metabolisers
  * Clinical effect will depend on the type of drug
    * Pro-drugs  
      * Extensive/ultra-rapid metabolisers will convert more drug to the active form, and see a greater effect  
      May lead to overdose.
      * Poor metabolisers will excrete more pro-drug prior to metabolism, and see a reduced clinical effect
    * Active drug
      * Extensive/ultra-rapid metabolisers will inactivate more drug, and see a reduced effect
      * Poor metabolisers will see a prolonged clinical effect
  * Clinical effect may be altered by enzyme interactions
    * e.g. Oxycodone use by an ultra-fast metaboliser, in combination with a CYP3A4 inhibitor (e.g. diltiazem) will result in a significant increase in the clinical effect of oxycodone
  * Drugs metabolised by CYP2D6 include:
    * Analgesics
      * Codeine (prodrug)
      * Oxycodone (metabolised to the significantly more potent oxymorphone)
      * Methadone
      * Tramadol (metabolised to form with greater MOP selectivity)
    * Psychiatric drugs
      * SSRIs
      * TCAs
      * Haloperidol
    * Cardiovascular drugs
      * Amiodarone
      * Flecainide
      * Mexilitine



###Phase II
Phase II reactions:
* Involve conjugation with another compound, producing a highly polar metabolite  
This increases water solubility and therefore renal elimination.
* Typically occur in the hepatic endoplasmic reticulum
* Include:
  * **Glucuronidation**  
    Addition of glucuronic acid.
  * **Sulfation**  
    Addition of a sulfo group.
  * **Acetylation**  
    Addition of an acetyl group.
    * Also occurs in the **lung** and **spleen**.
  * **Methylation**  
    Addition of a methyl group.
  
###Extraction Ratio
**Extraction ratio** is the proportion of a drug that is cleared from circulation during each pass through the organ, typically the liver:

$$ ER = { Drug \ Absorbed - Drug \ reaching \ systemic \ circulation \over Drug \ Absorbed } $$

Extraction ratio is dependent on:
* Blood flow
* Hepatocyte uptake
* Enzyme capacity  
Described by the **Michaelis Constant**: The concentration of a substrate which causes an enzyme to work at 50% of its maximum capacity.

Drugs can have either a high or low extraction ratio:
* **High extraction ratio**  
These drugs have a rapid uptake and high capacity, so elimination is **perfusion dependent**.
  * Free drug is rapidly removed from plasma, bound drug is released from plasma proteins and a concentration gradient is maintained
  * Metabolism of drugs with a high extraction ratio is:
    * **Independent of protein binding**
    * **Dependent on liver flow**  
    Typically doubling liver blood flow will double hepatic clearance.
  * There is a **high variability** in plasma concentration between individuals due to the variation in liver blood flow
  * Drugs with high extraction ratios are generally independent of enzyme activity - decreasing enzyme activity from 99% to 95% has a minimal effect on hepatic clearance
    * The **key exception** is **first pass metabolism**, as the above change will result in a five-fold difference in dose reaching the systemic circulation  
    Therefore drugs with a high extraction ratio have low PO bioavailability.


* **Low extraction ratio**  
Elimination is **capacity-dependent**.
  * Amount of free drug available for metabolism is greatly affected by the degree of protein binding
  * Metabolism is:
    * Largely **independent of flow**  
    Drugs have good PO bioavailability.
    * **Dependent on hepatocyte function and protein binding**
    



###Factors Affecting Hepatic Metabolism

|Drug Factors|Patient Factors|
|--|--|
|Lipid solubility|Age|
|Ionisation|Obesity|
|Protein binding|Pregnancy|
|Enzyme competition|Genetics: Slow vs. fast acetylators|
||Hepatic flow/Extraction Ratio|
||Enzyme Inhibition/Induction|
||Hepatic disease|
||Smoking, ETOH|

##Organ Independent Metabolism
Mechanisms of organ indepedent metabolism include:
* **Hofmann Degradation**  
Spontaneous degradation or metabolism of substances occurring in plasma.
  * e.g. Cisatracurim undergoes Hofmann degradation
* **Plasma Esterases**  
Plasma esterases are non-microsomal enzymes which hydrolyse ester bonds. They:
  * Are typically synthetised in the liver and erythrocytes
  * Have a **high capacity**  
  This, combined with the organ-independent elimination, means drugs metabolised by plasma esterases have a reliable offset.
  * e.g. Suxamethonium is hydrolysed by plasma esterases


##References
1. Peck TE, Hill SA. Pharmacology for Anaesthesia and Intensive Care. 4th Ed. Cambridge University Press. 2014.  
2. Essential pharmacology for the ANZCA primary exam
3. Birkett, DJ. [Pharmacokinetics made easy 9: Non-linear pharmacokinetics](https://www.nps.org.au/australian-prescriber/articles/pharmacokinetics-made-easy-9-non-linear-pharmacokinetics). 1994. Australian Prescriber.