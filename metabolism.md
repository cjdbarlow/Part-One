#Metabolism
> Describe the mechanisms of drug clearance and metabolism.

Removal of drug from the body requires either:
* Metabolism of active drug  
Typically by the liver, but other organs (kidney, lungs) also metabolise some substances.
* Excretion of active drug  
Often by the kidneys, but may also be in bile, or exhaled.
  * Removal of drugs from the body is achieved predominantly through renal excretion of water-soluble compounds
  * As many drugs are lipophilic, metabolism to water soluble compounds is required to clear drugs from the body


##Clearance
Clearance describes the elimination of drug from the body. Clearance:
* As discussed in modelling, clearance is the **volume of plasma completely cleared of a drug per unit time**  
Measured in ml.min<sup>-1</sup>.
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
  


##Kinetics
Drug clearance can follow either first order or zero-order kinetics.
###First-order kinetics
In **first-order** kinetics, a constant **proportion** of the drug in the body is eliminated per unit time.[^5]

![First-order kinetics](http://i.imgur.com/4g4wkD7.png)[^4]

Most drugs are eliminated by first order kinetics, as the capacity of the elimination system exceeds the concentration of drug

###Zero-order kinetics
In **zero-order** kinetics, a **constant amount of drug** is eliminated per unit time, independent of how much drug is in the body.[^5]

![Zero-order kinetics](http://i.imgur.com/NP6STlP.png)[^4]

* **Zero order kinetics** occurs when there is saturation of enzyme systems  
It is also known as **saturation kinetics** for this reason.
    * e.g. Phenytoin follows first order kinetics at lower doses, but zero-order kinetics at doses within the therapeutic range  
    This is clinically relevant as the narrow therapeutic index means that toxic levels may occur rapidly with a small increase in dose.
    * e.g. Ethanol also follows zero-order kinetics within the "therapeutic range", as it is a very weak (doses are in grams) positive allosteric modulator of the GABA<sub>A</sub> receptor

There are two concerns with zero-order kinetics:  
* Plasma concentrations will **rapidly increase** with only modest dose increase
* There is essentially no **steady state**: if drug input exceeds output, plasma levels will continue to rise.






##Hepatic Metabolism
The principle organ of drug metabolism is the liver. Hepatic metabolism:
* Usually decreases the function of a drug, though:
  * **Prodrugs** are designed to only become pharmacologically active after having undergone liver metabolism
  * Some drugs have active or toxic metabolites
* Is divided into **two phases**

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
  * Lungs
  * Kidney
  * Gut
  * Brain
* Classified into:
  * Families  
  CYP1, CYP2, CYP3...
  * Subfamilies  
  CYP1A, CYP1B...
  * Isoforms  
  CYP1A1, CYP1A2...


INSERT TABLE OF CYP450 enzymes here

Key CYP enzymes include:
* CYP3A4
  * Responsible for 60% of metabolic activity
* CYP2D6
  * Genetic polymorphism leads to significant inter-patient variability  
  Results in significant over- or under-metabolism of drugs.


###Phase II
Phase II reactions:
* Involve conjugation with another compound, producing a highly polar metabolite  
This increases water solubility and therefore renal elimination.
* Typically occur in the hepatic endoplasmic reticulum
* Include:
  * **Glucoronidaion**  
    Addition of glucoronic acid.
  * **Sulfation**  
    Addition of a sulfuryl group.
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


* **Low extraction ratio**  
Elimination is **capacity-dependent**.
  * Amount of free drug available for metabolism is greatly affected by the degree of protein binding
  * Metabolism is:
    * Largely **independent of flow** 
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
* **Plasma Estserases**  
Plasma esterases are non-microsomal enzymes which hydrolyse ester bonds. They:
  * Are typically synthetised in the liver and erythrocytes
  * Have a **high capacity**  
  This, combined with the organ-independent elimination, means drugs metabolised by plasma esterases have a reliable offset.
  * e.g. Suxamethonium is hydrolysed by plasma esterases


##References
1. Peck TE, Hill SA. Pharmacology for Anaesthesia and Intensive Care. 4th Ed. Cambridge University Press. 2014.  
2. Essential pharmacology for the ANZCA primary exam