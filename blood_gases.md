# Blood Gas Analysis
> Describe the methods of measurement of oxygen and carbon dioxide tension in blood and blood pH

Blood gas machines directly measure a handful of variables and calculate the rest. Measured variables include:
* PO<sub>2</sub>
* CO<sub>2</sub>
* pH

Calculated variables include:
* Bicarbonate  
Using the pH, CO<sub>2</sub> and the Henderson-Haselbalch equation  
* Base Excess  
Calculated using the Henderson-Haselbalch and Siggaard-Anderson equation. Can be expressed in two ways:
  * Base Excess  
  The amount of alkali that must be added to the sample to return it to a normal pH, at a temperature of 37°C and a PaCO<sub>2</sub> of 40mmHg.
  * Standardised Base Excess  
  As base excess, but calculated for blood of a Hb of 50g.L<sup>-1</sup>, which is thought to better represent the ECF as a whole.

##Oxygen Tension
Oxygen tension is measured with a **Clarke electrode**. This consists of:
* Platinum cathode
* Silver/Silver Chloride anode
* Potassium Chloride solution
* Oxygen-permeable membrane  
  This prevents blood being in direct contact with the cathode, which would lead to protein deposition on the cathode and incorrect measurement.
* Battery

![](http://i.imgur.com/j4O4Ywg.png)

###Method
* A voltage of **0.6V** is applied across the electrodes, and the current flow is measured
  * At the anode, silver reacts with chloride to produce electrons
  * At the cathode, oxygen combines with electrons and water to produce hydroxyl ions:  
  $$O_2 + 4e^- + 2H_2O \Rightarrow 4OH^-$$


* For each oxygen molecule present at the cathode, four electrons can be consumed
* Increasing the oxygen available at the cathode increases the number of electrons consumed, and therefore increases **current flow**
* Measured current flow is therefore proportional to oxygen tension in blood

###Calibration, Limitations, and Accuracy
* Calibration is performed with standard gas mixtures
* Cathode must be kept clean from protein and not damaged
* Cathode must be kept at 37°C
* May read falsely high with Halothane

##pH Measurement
pH is a measure of the hydrogen ion concentration[^1] in solution, and is defined as the negative logarithm to the base 10 of the [H<sup>+</sup>]:
* $$ pH = -log_{10}[H^+]$$
* A pH of **7.4** is a [H<sup>+</sup>] of **40nmol.L<sup>-1</sup>** at 37°C
  *  A change in a pH unit of 1 is equivalent to a 10-fold change in the [H<sup>+</sup>]
  *  A change in pH of 0.3 is equal to doubling or halving the [H<sup>+</sup>]


[H<sup>+</sup>] is measured using two electrodes:
* **Measuring electrode** (Silver/Silver Chloride)  
Surrounded by a Buffer solution, which is separated from the sample by H<sup>+</sup>-permeable glass
* **Reference electrode** (Mercury/Mercury Chloride)  
Surrounded by a Potassium Chloride Solution, which is separated from the sample by a membrane

###Method
* Two solutions with different H<sup>+</sup> concentrations which are separated by a glass membrane will develop a potential difference between them (proportional to the concentration gradient) 
* Reference electrode maintains a constant voltage, independent of arterial pH
* Measuring electrode (in its buffer solution), and covered by a semipermeable membrane, is placed in the blood sample
  * A potential difference between the blood and the measuring electrode will be generated
  * This potential difference is measured by the reference electrode

###Calibration, Limitations, and Accuracy
* Calibration is performed with two phosphate buffer solutions containing two different (known) [H<sup>+</sup>]
* Must be kept at 37°C  
    Hypothermia decreases solubility of CO<sub>2</sub> and therefore decreases pH 
* Electrodes must be kept clean from protein and not damaged

##Carbon Dioxide Tension
Carbon dioxide tension is measured with a **Severinghaus electrode**, which is based on the pH electrode, as PaCO2 is related to [H<sup>+</sup>]. The Severinghaus electrode consists of:
*  [H<sup>+</sup>]-permeable measuring electrode (Glass)
*  Reference electrode (Silver/Silver Chloride)
*  CO<sub>2</sub>-permeable plastic membrane, kept in contact with the sample
*  Nylon mesh impregnated with NaHCO<sub>3</sub>

###Method
* CO<sub>2</sub> diffuses across the plastic membrane into the mesh
* CO<sub>2</sub> reacts with water to produce H<sup>+</sup> ions
* The change in [H<sup>+</sup>] is measured by a pH electrode

###Calibration, Limitations, and Accuracy
* Calibration is performed with solutions of known CO<sub>2</sub> concentration
* Must be kept at 37°C  
    Hypothermia decreases solubility of CO<sub>2</sub> and therefore decreases pH 
* Electrodes must be kept clean from protein and not damaged
* Slow response time due to time taken for diffusion of CO<sub>2</sub>  
    This can be accelerated with carbonic anhydrase

##Footnotes
[^1]: Technically pH is defined as the **activity** of H<sup>+</sup> in a solution. Clinically, activity is identical to concentration, so  these definitions are functionally the same.


---
##References
Dr. Podcast Oxygen Measurement
Dr. Podcast CO2 and pH measurement
David and Kenny
http://www.frca.co.uk/article.aspx?articleid=100389