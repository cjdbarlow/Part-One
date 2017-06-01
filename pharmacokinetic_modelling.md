#Modelling {#id}
>Explain the concept of pharmacokinetic modeling of single and multiple compartment models.

**Pharmacokinetics** describes what the body does to a drug. Pharmacokinetic models are mathematical concepts used to predict plasma concentrations of drugs at different time points.

##Compartmental Modelling
The simplest model imagines the body a single, well-stirred compartment. 

![One-compartment model](http://i.imgur.com/vBX4znL.png)

In a one compartment model, the concentration of a drug ($$C$$) at time $$t$$ is given by the equation:

$$ C = C_0 e^{-kt} $$

Where:
* $$C_0$$ is the concentration at time 0  
As drug is only eliminated from the compartment, this is also the peak concentration.
* **k** is the **rate constant for elimination**  
This is the fraction of the Vd from which the drug is removed per unit time. The rate constant **determines** the **slope** of the curve.


* The volume of this compartment is the **volume of distribution, Vd**
    * Units are ml.kg<sup>-1</sup> 
    * The volume of distribution is defined as the **theoretical volume into which an amount of drug would be distribute to produce the identified plasma concentration**
        * $$ Vd = {Total \ bioavailable \ drug \over Plasma \ concentration } $$ 
    * Less confusingly, it is a measurement of what proportion of a drug is confined to plasma, and what proportion distributes to other tissues. A V<sub>D</sub> of:
        * Less than 40ml.kg<sup>-1</sup> indicates a drug is confined to plasma
        * Up to 200ml.kg<sup>-1</sup> indicates a drug is confined to the ECF
        * Up to 600ml.kg<sup>-1</sup> indicates a drug is dissolved into the TBW
        * Greater than 1L.kg<sup>-1</sup> indicates a drug is highly protein bound or lipophilic



* **Time constants** ($$\tau$$) are used to model change in an exponential process. They are discussed in more detail in respiratory mechanics. LINK TO THE TIME CONSTANT THINGGGGGGYYYYYYY
    * Elimination will be virtually **complete after three** time constants
    * A time constant is also the **inverse of the rate constant for elimination**, i.e. $$ \tau = {1 \over k }$$
* The **half-life** (t<sub>1/2</sub>) is the time it takes concentration to halve
    * Consequently, elimination will be virtually complete in **five half-lives**
    * One half life is equivalent to 0.693 time constants

###Clearance
Clearance is:
* The volume from which the drug is removed per unit time
* Expressed as: $$ Cl = k.Vd $$ in ml.min<sup>-1</sup>.
    * As the **time constant** is the inverse of **k**, clearance can also be expressed as: $$ Cl = {Vd \over \tau } $$
    * Since **k** and **Vd** are constant, clearance is also a constant.


The **rate of elimination** of a drug is the product of the clearance and the current concentration: $$ Rate \ of \ Elimination = Cl \times C $$, in mg.min<sup>-1</sup>

###Steady state
At steady state, **input is equal to output**. Therefore the concentration at steady state is:
* Proportional to the concentration of the infusion and infusion rate
* Inversely proportional to the clearance:  
$$ Input = Output \\ C_i.I = C_{ss}.Cl \\ C_{ss} = {C_i.I \over Cl}$$

The concentration of drug can therefore be determined by the amount infused and the clearance.

###Multiple Compartment Models
* Models with multiple compartments have a better fit with experimental data than single compartment models
* Three-compartment models are typically used, as additional compartments typically offer no extra fidelity but are mathematically more complex
* A three-compartment model *can* conceptualised as a plasma (or central) compartment, a well-perfused compartment, and a poorly-perfused compartment  
This doesn't mean that they *should* be thought of in this way - they are a mathematical technique used to calculate plasma concentration at a given time.
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

####Clearance in Two-Compartment Models
Removal of drug in two-compartment models is via:
* Distribution from the central to the peripheral compartment
* Elimination from the central compartment
* This produces a **bi-exponential** fall in plasma concentration  
Consists of two phases:
    * Phase α  
    Distribution phase.
        * A rapid decline in plasma concentration due to distribution to peripheral tissues
    * Phase β  
    Elimination phase.
        * Slow decline in plasma concentration due to:
            * Elimination from the body
            * Redistribution into plasma

BI EXPONENTIAL ELIMINATION GRAPH PAGE 57 PETKOV
Given by the equation $$C = Ae^{-\alpha t} + Be^{-\beta t}$$, where:
* $$C$$ is the concentration of drug in plasma
* $$A$$ is the y-intercept of the distribution exponent  
Used to calculate distribution half-life.
* $$B$$ is the y-intercept of the elimination exponent  
Used to calculate elimination half-life.
* $$\alpha$$ is the rate constant for distribution  
The value of $$\alpha$$ is dependent on the ratio of rate constants for distribution and redistribution (i.e. $$k_{12} \over k_{21}$$). If distribution greatly exceeds redistribution, the gradient of $$\alpha$$ will be very steep and plasma concentration will fall rapidly after administration.
* $$\beta$$ is the rate constant for elimination  


####Effect Site
* For many drugs, we are interested in targeting a particular effect-site concentration of drug (**Ce**)
* This will be different from plasma concentration (**Cp**) prior to reaching steady state
* The effect site is often not represented in three-compartment models  
It is modelled as a **compartment of no volume**, but a rate constant of elimination, **k<sub>e0</sub>**
  * The lag-time between Cp and Ce is described by the **half-life for equilibration, t<sub>1/2<sub>ke0</sub>**  
  A shorter t<sub>1/2<sub>ke0</sub> indicates a more rapid clinical effect following administration.

##Non-Compartmental Models
Compartment models are not appropriate for describing the behaviours of all drugs. Non-compartmental models are used when drug:
* Clearance is organ-independent
* Elimination does not occur solely from the central compartment

These models use **AUC**, which is calculated by measuring the plasma concentration of a drug at different time intervals, and **plotting the area under the curve (AUC)**. This can be used to:
* Determine clearance**  
$$ Cl = {Dose \over AUC}$$
* **Bioavailability**  
Difference between the AUC of the same dose of drug administered IV and via another route.



##Kinetics
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


---
##References
 [^1]: Peck TE, Hill SA. Pharmacology for Anaesthesia and Intensive Care. 4th Ed. Cambridge University Press. 2014.  
 [^2]: Plasma Volume.  Mosby's Medical Dictionary, 8th edition. 2009.  
 [^3]: Made with draw.io  
 [^4]: Made with xkcdgraphs.com  
 [^5]: Australian Prescriber. Pharmacokinetics made easy 9: Non-linear pharmacokinetics. Available at: http://www.australianprescriber.com/magazine/17/2/36/8#qa