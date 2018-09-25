# Time-Constants
> Explain the concepts of time constants

##A Refresher on Time Constants
The time-constant is:
* The **time** that a **process would take to complete *if*** its **initial rate of change** remained constant
* Relevant when modeling a process using exponential functions
    * Remember an **exponential function** is a curve where **the rate of change is proportional to the current value**
    
For a quantity that decreases[^1] overtime, the general case is:

$$ y = y_0e^{-kt} $$, where:
* $$y_0$$ is the value of $$y$$ at $$t=0$$
* $$-k$$ is the rate constant ($$k$$ plots a curve that **grows**)
* $$t$$ is time

Importantly:
* $$k$$ is the **reciprocal of the time constant**, $$\tau$$
* In a negative exponential, **time-constant** is the time it would take for $$y$$ to reach 0 if the original rate of change was maintained.
* Other fun facts about the time constant (for an exponential decay) include:
    * After 1 $$\tau$$, $$y$$ will be 37% ($$1\over e$$) of its initial value
    * After 2 $$\tau$$, $$y$$ will be 13.5% ($$1\over e^2$$) of its initial value
    * After 3 $$\tau$$, $$y$$ will be 5% ($$1\over e^3$$) of its initial value
    * After 5 $$\tau$$, $$y$$ will be 1% ($$1 \over e^5$$) of its initial value

##Physiological Signifiance
The time-constant is used in respiratory physiology in:
* Timing inspiration and expiration
* Elimination of inhalational anaesthetics
* The change in PaO<sub>2</sub> and PaCO<sub>2</sub> after changes in ventilation

In ventilation:
* The time constant is affected by:
    * Compliance
    * Resistance
    * Inflation pressure  
    At a **constant inflation pressure**, the **time constant is equal to the product of resistance and compliance**, i.e. $$ \tau = C \times R $$.
* For two lung units of **equal compliance and resistance**
    * Inflation will occur as per the exponential growth function
    * Time-constants of each lung unit will be equal
    * No redistribution of gas will occur at end-inspiration as the pressure and volume of each unit is the same
* For two lung units, where **one has half the compliance but twice the resistance**
    * The time constants are equal, therefore both reach peak filling at the same time
        * However, the poorly compliant unit will only reach half the volume
    * No redistribution of gas will occur at end-inspiration as the pressure and volume of each unit is the same
* For two lung units, where one has **twice the resistance** of the other
    * The time-constants are unequal
    * The resistant unit will fill at half the rate of the other  
        * If inspiration is prolonged both will reach the same volume
        * If inspiration his halted early, and expiration prevented, there will be a pressure gradient between the units (as compliance is the same), and gas will redistribute from the low-resistant unit to the high-resistant unit
* For two lung units where one has **half the compliance**
    * The time constants are unequal
    * The poorly compliant unit will fill at half the rate of the other
        * If inspiration is prolonged they will both reach the same pressure  
        The volume in the poorly compliant unit will be half that of the more compliant unit.
    * During inspiration, the pressure rises more rapidly in the poorly compliant unit, and if inspiration is stopped and expiration prevented, this will result in redistribution into the more compliant unit until pressures are equal

In general:
* **Rate of filling is determined by time constants**
    * **High-resistance** lung units have **longer time constants** and take longer to fill
* **Final volume** (assuming an indefinite inspiration) **is a function of compliance**
    * Poorly compliant units with **empty and fill rapidly**  
    This creates the concept of **fast** and **slow alveoli**, depending on their time constants.


* At a sustained inflation pressure:
    * A low-resistance unit shows initial greater volume change but rapidly approaches equilibrium volume
    * A high-compliance unit takes a greater overall volume over a longer period
* At end-inspiration:
    * Pressure in units with a shorter time-constant rises more rapidly and if a breath is held will result in redistribution to those units with a longer time-constant.


##Clinical Signifiance
If time-constants are equal:
* The pressure in each unit is identical throughout inspiration and distribution  
Therefore, dynamic compliance will be independent of respiratory rate.

If time-constants are unequal:
* Long-time constant units may still be inhaling whilst the rest of the lung has stopped, or begun exhalation  
This is called **pendelluft**.
* In pendelluft, distribution of inspired gas is dependent on respiratory rate
    * As respiratory rate increases, the proportion of the tidal volume that is delivered to the region with a long time-constant decreases  
    Fast alveoli are preferentially inflated, causing V/Q scatter or shunt in the unventilated slow alveoli.     
    * Dynamic compliance will decrease as respiratory rate rises and be markedly different from static compliance

---
##Footnotes
[^1]: For a curve that grows overtime, the time constant is the time it would take for $$y$$ to reach **63% of its final value**, i.e. $$1 - {1 \over e }$$.

---
##References
1. Lumb A. Nunn's Applied Respiratory Physiology. 7th Edition. Elsevier. 2010.
