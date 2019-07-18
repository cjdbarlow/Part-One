#Modeling {#id}
>Explain the concept of pharmacokinetic modeling of single and multiple compartment models.

**Pharmacokinetics** describes what the body does to a drug. Pharmacokinetic models are mathematical concepts used to predict plasma concentrations of drugs at different time points.

##Basic Pharmacokinetic Terms
Key concepts in pharmacokinetics include:
* **Volume of distribution, V<sub>D</sub>**  
The volume of distribution is defined as the **theoretical volume into which an amount of drug would be distribute to produce the observed plasma concentration**.
    * Units are ml.kg<sup>-1</sup> 
        * $$ Vd = {Total \ bioavailable \ drug \over Plasma \ concentration } $$ 
    * It is a way to describe what proportion of a drug is confined to plasma, and what proportion distributes to other tissues
    * It does not correspond to any particular volume, however a V<sub>D</sub> of:
        * Less than 40ml.kg<sup>-1</sup> indicates a drug is confined to plasma
        * Up to 200ml.kg<sup>-1</sup> indicates a drug is confined to the ECF
        * Up to 600ml.kg<sup>-1</sup> indicates a drug is dissolved into the TBW
        * Greater than 1L.kg<sup>-1</sup> indicates a drug is highly protein bound or lipophilic  
        Agents which cross the blood brain barrier typically have a V<sub>D</sub> of 1-2L.kg<sup>-1</sup>.
    * Subtypes of the volume of distribution are used to describe drug distribution at different times or with different models
        * These include:
            * V<sub>1</sub>  
            Volume of central compartment.
            * V<sub>D</sub>ss  
            Volume of distribution at steady state.
            * V<sub>D</sub>pe  
            Volume of distribution at peak effect.
        * Which volume to use depends on the pharmacological question
            * e.g. Intubating dose for opioid should use a volume between V<sub>1</sub> (very small) and V<sub>D</sub>ss (very large) - V<sub>D</sub>pe is ideal as it will allow a target concentration to be selected for the time at which intubation will occur relative to drug administration


* **Half-life** (t<sub>1/2</sub>)  
The time it takes for a process to be 50% complete. With respect to drug clearance, it is the time it takes for concentration (typically in plasma) to fall by 50%.
    * A process is considered to be complete after 4-5 half-lives  
    Concentration will decrease by 50% after each half-life, so after 5 half-lives concentration will be 3.125% of its starting value.
        * This also applies to wash in - it will take ~4-5 elimination half-lives of a drug for a constant-rate infusion to reach its final concentration
    * Half-life is mathematically related to many other key pharmacokinetic terms:  
    $$t_{1/2} = 0.693 \times \tau = {0.693 \over k} = {0.693 \times V_D \over Cl}$$, where:
        * $$\tau$$ is the time constant
        * $$k$$ is the rate constant for elimination
        * $$V_D$$ is the volume of distribution
        * $$Cl$$ is the clearance
    * Various types of half-life are described:
        * t<sub>1/2</sub>α describes the rapidity of the distribution phase following drug administration
        * t<sub>1/2</sub>β describes the rapidity of the *elimination* phase occurring after drug distribution equilibrium  
        This only evaluates clearance from plasma, and so is a composite of both excretion from the body (e.g. renal and hepatic clearance) and ongoing distribution to peripheral tissues.
            * The elimination half-life is generally not useful to predict drug offset, as this is affected by many factors  
            However, it does set an **upper limit** on how long it will take plasma concentration to fall by 50%.


* **Time-constant** ($$\tau$$)  
The time taken for a process to complete if it continued at its initial rate of change. Time constants are related to half-life, but are better suited when modeling change in exponential processes.
    * Time constants are discussed in more detail under [respiratory time constants](time-constants.md)
    * Elimination will be virtually complete after three time constants
    * A time constant is the **inverse of the rate constant for elimination**, i.e. $$ \tau = {1 \over k }$$
    * Illustration of the relationship between half-life and time constant:  
    <img src="resources\half-life-and-time-constants.svg">  


* **Clearance**  
The clearance is volume of plasma completely cleared of a drug per unit time.
    * In a one compartment model, this can be expressed as: $$ Cl = k.V_D $$ in ml.min<sup>-1</sup>.
        * As the **time constant** is the inverse of **k**, clearance can also be expressed as: $$ Cl = {V_D \over \tau } = {0.693 \times V_D \over t_{1/2}} $$
    * Since $$k$$ and $$V_D$$ are constants, clearance is also a constant
    * Total clearance is a sum of the clearance of each individual clearance organ


* **Rate of elimination**  
Amount of drug removed by the body per unit time.
    * Rate of elimination is the product of the clearance and the current concentration: $$ Rate \ of \ Elimination = Cl \times C $$, in mg.min<sup>-1</sup>
    * This is not the rate constant for elimination


##Compartmental Modeling{#one}
The simplest model imagines the body a single, well-stirred compartment. 

<img src="resources\1compartment.svg" style="width: 10pc;">

In a one compartment model, the concentration of a drug ($$C$$) at time $$t$$ is given by the equation:

$$ C = C_0 e^{-kt} $$

Where:
* $$C_0$$ is the concentration at time 0  
As drug can only be eliminated from the compartment, this is also the peak concentration.
* **k** is the **rate constant for elimination**  
This is the fraction of the Vd from which the drug is removed per unit time. The rate constant **determines** the **slope** of the curve.
    * A high rate constant for elimination results in a steep curve and therefore a short time constant


###Steady state
At steady state, **input is equal to output**. Therefore concentration at steady state is:
* Proportional to the concentration of the infusion and infusion rate
* Inversely proportional to the clearance:  
$$ \begin{aligned}
Input = Output \\  
C_i.I = C_{ss}.Cl \\
C_{ss} = {C_i.I \over Cl}
\end{aligned}$$
    * Concentration of drug can therefore be determined by the amount infused and the clearance
* Note steady state requires peripheral compartments to be saturated, and so will only occur after an infusion of many hours

###Multiple Compartment Models{#multi}
* Models with multiple compartments have a better fit with experimental data than single compartment models
* Three-compartment models are typically used, as additional compartments typically offer no extra fidelity but are mathematically more complex
* A three-compartment model *can* be conceptualised as a plasma (or central) compartment, a well-perfused compartment, and a poorly-perfused compartment  
This doesn't mean that they *should* be thought of in this way - they are a mathematical technique used to calculate plasma concentration at a given time.

<img src="resources\3compartment.svg">



Plasma concentration in multi-compartment models is:
* Predicted through the net effect of several negative exponential equations  x
This is covered under two-compartment models below.
* Dependent on the effects of:
    * **Distribution**   
    Distribution describes the movement of drug from the central compartment (V<sub>1</sub>) to the peripheral compartment(s).
        * Rapid fall in plasma concentration of a drug after administration is generally due to distribution  
        Distribution is an important method for drug offset in short-acting drugs.
    * **Redistribution**  
    Redistribution refers to the movement of drug from the peripheral compartment(s) back into plasma.
        * Drugs which have a large V<sub>D</sub> in a peripheral compartment tend to **distribute quickly** along this concentration gradient, and **redistribute slowly** back into plasma
        * Drugs which tend to **distribute slowly** tend to **redistribute quickly** once administration has ceased
    * **Excretion**  
    Excretion is the removal of drug from the body. 

####Clearance in Two-Compartment Models{#bi}
Removal of drug in two-compartment models is via:
* Distribution from the central to the peripheral compartment
* Elimination from the central compartment
* This produces a **bi-exponential** fall in plasma concentration  
Consists of two phases:
    * Phase α  
    Distribution phase: A rapid decline in plasma concentration due to distribution to peripheral tissues.
    * Phase β  
    Elimination phase: Slow decline in plasma concentration due to:
        * Elimination from the body
        * Redistribution into plasma

<img src="resources\biexponent.svg">


This curve is given by the equation $$C = Ae^{-\alpha t} + Be^{-\beta t}$$, where:
* $$C$$ is the concentration of drug in plasma
* $$A$$ is the y-intercept of the distribution exponent  
Used to calculate distribution half-life.
* $$B$$ is the y-intercept of the elimination exponent  
Used to calculate elimination half-life.
* $$\alpha$$ is the rate constant for distribution  
The value of $$\alpha$$ is dependent on the ratio of rate constants for distribution and redistribution (i.e. $$k_{12} \over k_{21}$$).
    * If distribution greatly exceeds redistribution, the gradient of $$\alpha$$ will be very steep and plasma concentration will fall rapidly after administration
* $$\beta$$ is the rate constant for elimination  


* Note that the distribution and elimination curves appear straight because the y-axis is log-transformed
    * If plasma concentration was plotted on the y-axis, then each of these curves would be a negative exponential (wash-out curve)
    
    
####Effect Site{#effect}
Pharmacokinetic models typically display the plasma concentration.
* Clinically however, we are interested in drug concentrations at the site of action (e.g. the brain)
    * Concentration at the effect site (also known as biophase) is given by **Ce**
        * This cannot be measured, and so is a calculated value
    * Effect site concentration be different from plasma concentration (**Cp**) prior to reaching steady state  
    The delay between plasma and effect site concentrations is an example of hysteresis.
* The effect site can be modeled as an additional compartment in three-compartment models  
The effect site is modeled as a **compartment of negligible volume** contained **within V<sub>1</sub>**, but does have rate constants
    * Effect site volume changes as V<sub>1</sub> changes
    * The k<sub>e1</sub> is the rate constant for drug diffusion from plasma into the effect site
    * The **k<sub>e0</sub>** is the rate constant for elimination of drug **from the effect site**  
    This is a theoretical elimination pathway - drug is not usually metabolised at the effect site.
        * The t<sub>1/2</sub>ke0 describes the effect-site equilibration time  
        It describes how rapidly the effect site reaches equilibrium with plasma.
            * A large ke0 (rapid drug flow) gives a short t<sub>1/2</sub>ke0
            * After one t<sub>1/2</sub>ke0, 50% of the final effect site concentration will be reached provided plasma concentration remains constant
        * **A shorter t<sub>1/2</sub>ke0 indicates that that the effect site concentration will reach equilibrium with plasma more rapidly, and therefore a more rapid clinical effect following administration is seen**
        * Note that:
            * The t<sub>1/2</sub>ke0 is not the time to peak effect
                * Neither is k<sub>e0</sub>
            * For an infusion run at constant plasma concentration the peak effect will be seen at 3-5x the t<sub>1/2</sub>ke0
            * The time to peak effect is a function of both plasma kinetics and the t<sub>1/2</sub>ke0
                * e.g. adenosine has such a short elimination t<sub>1/2<sub> the effect site concentration will reach its peak rapidly regardless of the k<sub>e0</sub>

<img src="resources\3compartment+effect.svg">

##Non-Compartmental Models
Compartment models are not appropriate for describing the behaviours of all drugs. Non-compartmental models are used when drug:
* Clearance is organ-independent
* Elimination does not occur solely from the central compartment

These models use **AUC**, which is calculated by measuring the plasma concentration of a drug at different time intervals, and **plotting the area under the curve (AUC)**. This can be used to:
* Determine **clearance**  
$$ Cl = {Dose \over AUC}$$
* Determine **Bioavailability**  
Difference between the AUC of the same dose of drug administered IV and via another route.

---
##Footnotes
The formula for half-life can be derived from the equation for a wash-in exponential as follows:
* Wash in exponential is given by: $$C = 1 - e^{-kt}$$  
* $$y = 0.5$$ can then be substituted and the equation solved for $$t$$ as follows:  
$$ \begin{aligned}
0.5 &= 1 - e^{-kt} \\
 -0.5 &= e^{-kt} \\
\ln-0.5 &= -kt \\
\ln 2 &= kt \\
{\ln 2 \over k} &= t \\
{0.693 \over k} &= t

\end{aligned}$$



---
##References
1. Peck TE, Hill SA. Pharmacology for Anaesthesia and Intensive Care. 4th Ed. Cambridge University Press. 2014.  
2. Plasma Volume.  Mosby's Medical Dictionary, 8th edition. 2009.  
3. Stanski RD, Shafer SL. [The Biophase Concept and Intravenous Anesthesia](https://web.stanford.edu/~sshafer/LECTURES.DIR/Notes/Biophase%20in%20Anesthesia.doc).
4. Petkov V. Essential Pharmacology For The ANZCA Primary Examination. Vesselin Petkov. 2012.
