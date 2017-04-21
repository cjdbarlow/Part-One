#Metabolism
> Describe the mechanisms of drug clearance and metabolism.

Removal of drug from the body requires either:
* Metabolism of active drug  
Typically by the liver, but other organs (kidney, lungs) also metabolise some substances.
* Excretion of active drug  
Often by the kidneys, but may also be in bile, or exhaled.


##Clearance
Clearance describes the elimination of drug from the body. Clearance:
* As discussed in modelling, clearance equals the **volume of plasma completely cleared of a drug per unit time**  
Measured in ml.min<sup-1</sup>.
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
    * $$$ER$$ is the extraction ratio
  






**Elimination** of drugs from the body is achieved predominantly through renal excretion of water-soluble compounds. As most drugs are lipophilic, metabolism to water soluble compounds is required to clear drugs from the body.

##Hepatic Metabolism
The principle organ of drug metabolism is the liver. Hepatic metabolism is broken up into **phases** and is dependent on the **extraction ratio** for a given drug.

###Phases of metabolism
Metabolism usually decreases the function of a drug, though **prodrugs** are designed to only become pharmacologically active after having undergone liver metabolism.

####Phase I
Phase one reactions occur in the **endoplasmic reticulum** predominantly by enzymes of the **cytochrome P450 system**. They improve water solubility by exposing a functional chemical group. They typically occur prior to phase II reactions for most drugs.

The most important is **CYP3A4**, which metabolises >50% of prescribed drugs (including many ICU staples) as well as being induced and inhibited by many other common drugs.

| Metabolises | Inducers | Inhibitors |
| -- | -- | -- |
| Midazolam | Glucocorticoids | Macrolides |
| Temazepam | Phenytoin | -azoles |
| Diazepam | Carbamazepine | St. John's Wort |
| Lignocaine | Barbituates |  |
| Fentanyl | Rifampicin |  |
| Alfentanil |  |  |
| Vecuronium |  |  ||

Phase I reactions include:
* **Oxidation**  
  Loss of electrons
* **Reduction**  
  Gain of electrons
* **Hydrolysis**  
  Addition of a water molecule. May result in two new compounds.

###Phase II
Phase II reactions involve conjugation with another compound, resulting in a highly polar metabolite. They typically occur in the hepatic endoplasmic reticulum.
* **Glucoronidaion**  
  Addition of glucoronic acid
* **Sulfation**  
  Addition of a sulfuryl group
* **Acetylation**  
  Addition of an acetyl group  
  Also occurs in the **lung** and **spleen**.
* **Methylation**  
  Addition of a methyl group

###Extraction Ratio
**Extraction ratio** is the proportion of a drug that is from circulation during each pass through the organ, typically the liver:

$$ ER = { Drug \ Absorbed - Drug \ reaching \ systemic \ circulation \over Drug \ Absorbed } $$

It is dependent on:
* Blood flow
* Hepatocyte uptake
* Enzyme capacity
    * Described by the **Michaelis Constant**: The concentration of a substrate which causes an enzyme to work at 50% of its maximum capacity


* **High extraction ratio**  
  These drugs have a rapid uptake and high capacity. Free drug is rapidly removed from plasma, bound drug is released from plasma proteins and a concentration gradient is maintained. Metabolism of drugs with a high extraction ratio  is **independent of protein binding** and **dependent on liver flow**. There is a **high variability** in plasma concentration between individuals due to the variation in liver blood flow.

    Drugs with a **high extraction ratio** have **perfusion-dependent elimination**.

* **Low extraction ratio**  
  The amount of free drug available for metabolism is greatly affected by the degree of protein binding. Metabolism is **largely independent of flow** and **dependent on hepatocyte function and protein binding**.

    Drugs with a **low extraction ratio** have **capacity-dependent elimination**.

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

##Hofmann Degradation
**Hofmann degradation** refers to spontaneous degradation or metabolism of substances occurring in plasma.

>Cisatracurim undergoes Hofmann degradation

##Plasma Estserases
Plasma esterases are non-microsomal enzymes which hydrolyse ester bonds. They are typically synthetised in the liver and erythrocytes, and have a **high capacity** and **organ independent elimination**, so drugs metabolised by plasma esterases have a reliable offset.


##References
 [^1]: Peck TE, Hill SA. Pharmacology for Anaesthesia and Intensive Care. 4th Ed. Cambridge University Press. 2014.  
 Essential pharmacology for the ANZCA primary exam