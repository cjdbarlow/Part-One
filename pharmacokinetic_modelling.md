#Modelling
>Explain the concept of pharmacokinetic modeling of single and multiple compartment models.

**Pharmacokinetics** describes what the body does to a drug. Pharmacokinetic models are mathematical concepts used to predict plasma concentrations of drugs at different time points.

##Compartmental Modelling
The simplest model imagines the body a single, well-stirred compartment. 

![One-compartment model](http://i.imgur.com/vBX4znL.png)

In a one compartment model, the concentration of a drug ($$C$$) at time $$t$$ is given by the equation:

$$ C = C_0 e^{-kt} $$

Where:
* $$C_0$$ is the concentration at time 0, and so determines peak concentration.
* **k** is the **rate constant for elimination**, and determines the slope of the curve


* The volume of this compartment is the **volume of distribution, Vd**
    * Units are ml.kg<sup>-1</sup> 
    * The volume of distribution is defined as the **theoretical volume into which an amount of drug would be distribute to produce the identified plasma concentration**
        * $$ Vd = {Total \ bioavailable \ drug \over Plasma \ concentration } $$ 
    * Less confusingly, it is a measurement of what proportion of a drug is confined to plasma, and what proportion distributes to other tissues.
        * A drug with a **high plasma concentration** will have a **low Vd**
            * The lowest possible Vd will be ~40ml.kg<sup>-1</sup>, indicating a drug is completely confined to plasma[^2]
        * A drug with a **low plasma concentration** will have a **high Vd**


* The rate constant for elimination, **k**, is the fraction of the Vd from which the drug is removed per unit time


* **Time constants** ($$\tau$$) are used to model change in an exponential process. They are discussed in more detail in respiratory mechanics. LINK TO THE TIME CONSTANT THINGGGGGGYYYYYYY
    * Elimination will be virtually **complete after three** time constants
    * A time constant is also the **inverse of the rate constant for elimination**, i.e. $$ \tau = {1 \over k }$$
* The **half-life** (t<sub>1/2</sub>) is the time it takes concentration to halve
    * Consequently, elimination will be virtually complete in **five half-lives**
    * One half life is equivalent to 0.693 time constants

###Clearance
* **Clearance** is the volume from which the drug is removed per unit time.
* It is expressed as: $$ Cl = k.Vd $$ in ml.min<sup>-1</sup>.
* As the **time constant** is the inverse of **k**, clearance can also be expressed as: $$ Cl = {Vd \over \tau } $$
* Since **k** and **Vd** are constant, clearance is also a constant.

* **Rate of elimination** is the product of the clearance and the concentration:
    * $$ Rate \ of \ Elimination = Cl \times C $$, in mg.min<sup>-1</sup>

###Steady state
At steady state, **input is equal to output**. Therefore the concentration at steady state is proportional to the concentration of the infusion and infusion rate, and inversely proportional to the clearance:  

$$ Input = Output \\ C_i.I = C_{ss}.Cl \\ C_{ss} = {C_i.I \over Cl}$$

The concentration of drug can therefore be determined by the amount infused and the clearance.

###Multiple compartment models
* Multiple compartment better represent experimental data than single compartment models
  * Three-compartment models are typically used, as additional compartments typically offer no extra fidelity but are mathematically more complex
    * A three-compartment model *can* conceptualised as a plasma (or central) compartment, a well-perfused compartment, and a poorly-perfused compartment
      * This doesn't mean that they *should* be thought of in this way - they are a mathematical technique used to calculate plasma concentration at a given time
![Three-compartment model](http://i.imgur.com/jfQ172d.png)[^3]

* Plasma concentration in multicompartment model is predicted through the net effect of several negative exponential equations.

SUM OF EXPONENTIAL EQUATIONS CLEARANCE GRAPH WITH INTERCEPTS

* **Distribution**   
Distribution refers to the movement of drug from the central compartment (V<sub>1</sub>, typically plasma) to the peripheral compartment(s). Rapid fall in plasma concentration of a drug after administration is generally due to distribution. This produces the **bi-exponential** curve seen in **two-compartment models**.


* **Redistribution**  
Redistribution refers to the movement of drug from the peripheral compartment(s) back into plasma.
    * Drugs which have a large Vd in a peripheral compartment tend to **distribute quickly** along this concentration gradient, and **redistribute slowly** back into plasma
    * Drugs which tend to **distribute slowly** tend to **redistribute quickly** once administration has ceased.



* **Elimination**  
Elimination is the loss of drug from the plasma compartment. 

####Effect Site
* For many drugs, we are interested in targeting a particular effect-site concentration of drug (**Ce**)
* This will be different from plasma concentration (**Cp**) prior to reaching steady state
* The effect site is not represented in three-compartment models  
It can be considered as a **compartment with no volume**, but a rate constant of elimination, **k<sub>e0</sub>**
  * The lag-time between Cp and Ce is described by the **half-life for equilibration, t<sub>1/2<sub>ke0</sub>**

##Kinetics
###First-order kinetics
In **first-order** kinetics, a constant **proportion** of the drug in the body is eliminated per unit time.[^5]

![First-order kinetics](http://i.imgur.com/4g4wkD7.png)[^4]

* This occurs in most circumstances, when metabolism is not rate limited by availability of enzymes

###Zero-order kinetics
In **zero-order** kinetics, a **constant amount of drug** is eliminated per unit time, independent of how much drug is in the body.[^5]

![Zero-order kinetics](http://i.imgur.com/NP6STlP.png)[^4]

* **Zero order kinetics** occurs when there is saturation of enzyme systems  
It is also known as **saturation kinetics** for this reason.


> Phenytoin is the classic exam example, as it follows first order kinetics at lower doses, but zero-order kinetics at doses within the therapeutic range. This is clinically relevant as the narrow therapeutic index means that toxic levels may occur rapidly. Thus, small dosing adjustments are required. 

<!-- -->

> Ethanol also follows zero-order kinetics.  


There are two concerns with zero-order kinetics:  
* Plasma concentrations will **rapidly increase** with only modest dose increase
* There is essentially no **steady state**: if drug input exceeds output, plasma levels will continue to rise.

##Non-compartmental modelling
An alternative method to model drug elimination is be measuring plasma concentrations at multiple time points and **plotting the area under the curve (AUC) to determine clearance**:

$$ Cl = {Dose \over AUC}$$

**Bioavailability** is determined by the difference between the AUC of the same dose of drug administered IV and via another route.

---
##References
 [^1]: Peck TE, Hill SA. Pharmacology for Anaesthesia and Intensive Care. 4th Ed. Cambridge University Press. 2014.  
 [^2]: Plasma Volume.  Mosby's Medical Dictionary, 8th edition. 2009.  
 [^3]: Made with draw.io  
 [^4]: Made with xkcdgraphs.com  
 [^5]: Australian Prescriber. Pharmacokinetics made easy 9: Non-linear pharmacokinetics. Available at: http://www.australianprescriber.com/magazine/17/2/36/8#qa