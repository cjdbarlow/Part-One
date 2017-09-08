# Blood Gas Analysis
> Describe the methods of measurement of oxygen and carbon dioxide tension in blood and blood pH

Blood gas machines directly measure three variables and calculate the remainder. Measured variables are:
* PO<sub>2</sub>
* CO<sub>2</sub>
* pH

Calculated variables include:
* Bicarbonate  
Using the pH, CO<sub>2</sub> and the Henderson-Hasselbalch equation.  
* Base Excess  
Calculated using the Henderson-Hasselbalch and Siggaard-Anderson equation. Can be expressed in two ways:
  * Base Excess  
  The amount of alkali that must be added to the sample to return it to a normal pH, at a temperature of 37°C and a PaCO<sub>2</sub> of 40mmHg.
  * Standardised Base Excess  
  As base excess, but calculated for blood with a Hb concentration of 50g.L<sup>-1</sup>. This is thought to better represent the ECF as a whole.

##Oxygen Tension
Oxygen tension is measured with a **Clarke electrode**. This consists of:
* A chamber for the blood sample  
* A chamber containing a potassium chloride solution, which:
  * Is separated from the blood chamber by an oxygen-permeable membrane 
  This prevents blood being in direct contact with the cathode, which would lead to protein deposition on the cathode and incorrect measurement.
  * Contains a platinum cathode
  * Contains a silver/silver Chloride anode
* A battery applying 0.6V across the electrodes

<object data="resources\clark-electrode.svg" type="image/svg+xml"></object>

###Method
* A voltage of **0.6V** is applied across the electrodes, causing the silver to reactive with chloride in the solution to produce electrons:  
$$Ag + Cl^- \Rightarrow AgCl + e^-$$
  * This potential difference is required to start the reaction
  * 0.6V is chosen because it is enough to start the reaction but will have minimal effect on measured current flow 
* At the cathode, oxygen combines with electrons and water to produce hydroxyl ions: $$O_2 + 4e^- + 2H_2O \Rightarrow 4OH^-$$
* For each oxygen molecule present at the cathode, four electrons can be consumed
* Increasing the oxygen available at the cathode increases the number of electrons consumed, and therefore increases **current flow**
  * Oxygen will move from the sample chamber to the measuring chamber according to its partial pressure
* Measured current flow is therefore proportional to oxygen tension in blood

###Calibration, Limitations, and Accuracy
* Calibration is performed with standard gas mixtures  
Requires regular two-point calibration.
* Cathode must be kept clean from protein and not damaged
* Cathode must be kept at 37°C
* May read falsely high with halothane

##pH Measurement
pH is a measure of the hydrogen ion concentration[^1] in solution, and is defined as the negative logarithm to the base 10 of the [H<sup>+</sup>]:
* $$ pH = -log_{10}[H^+]$$
* A pH of **7.4** is a [H<sup>+</sup>] of **40nmol.L<sup>-1</sup>** at 37°C
  *  A change in a pH unit of 1 is equivalent to a 10-fold change in the [H<sup>+</sup>]
  *  A change in pH of 0.3 is equal to doubling or halving the [H<sup>+</sup>]

<object data="resources\ph-electrode.svg" type="image/svg+xml"></object>

The pH electrode consists of:
* A chamber for the blood sample
* A measuring chamber, separated from the sample by H<sup>+</sup>-permeable glass, which contains:
  * A buffer solution
  * A silver/silver chloride measuring electrode
* A reference chamber, also separated from the chamber by H<sup>+</sup>-permeable glass, which contains:
  * A KCl solution  
  Has no buffering properties.
  * A mercury/mercury chloride reference electrode

###Method
* Relies on the principle that two solutions with different H<sup>+</sup> activities will develop a potential difference between them (proportional to the concentration gradient) 
* H<sup>+</sup> passes through the glass along a concentration gradient:
  * A variable potential difference is generated in the measuring chamber, as H<sup>+</sup> ions are buffered and the concentration gradient is maintained  
  * A constant potential difference is generated in the reference chamber, as there is no buffer of H<sup>+</sup> ions in the KCl solution
* Once H<sup>+</sup> has equilibrated between blood and the KCl solution, the potential difference between the measuring and reference electrodes is proportional to the H<sup>+</sup> concentration in blood


###Calibration, Limitations, and Accuracy
* Calibration is performed with two phosphate buffer solutions containing two different (known) [H<sup>+</sup>]
* Must be kept at 37°C  
    Hypothermia decreases solubility of CO<sub>2</sub> and therefore decreases pH 
* Electrodes must be kept clean from protein and not damaged

##Carbon Dioxide Tension
Carbon dioxide tension is measured with a **Severinghaus electrode**, which is based on the pH electrode, as PaCO2 is related to [H<sup>+</sup>]. The Severinghaus electrode consists of:
* A chamber for the blood sample, separated from the bicarbonate chamber by a CO<sub>2</sub> permeable membrane
* A chamber containing bicarbonate solution in a nylon mesh, and separated from both the measuring and reference chambers by H<sup>+</sup>-permeable glass
* A measuring chamber containing:
  * A buffer solution
  * A silver/silver chloride measuring electrode
* A  reference chamber containing:
  * A KCl solution
  * A mercury/mercury chloride reference electrode

<object data="resources\severinghaus.svg" type="image/svg+xml"></object>

###Method
* CO<sub>2</sub> diffuses from blood into the bicarbonate chamber
* CO<sub>2</sub> reacts with water in the bicarbonate chamber to produce H<sup>+</sup> ions
* From here, the process is identical to the pH electrode, except bicarbonate takes the place of blood:
  * H<sup>+</sup> ions diffuse into the reference chamber until the H<sup>+</sup> ion concentration has equilibrated
  * H<sup>+</sup> ions continually diffuse into the measuring chamber (as they are buffered)  
    * This establishes a constant pH gradient  
    This gradient is proportional the H<sup>+</sup> ion concentration in the bicarbonate chamber, which is proportional to the CO<sub>2</sub> content of blood.

###Calibration, Limitations, and Accuracy
* Calibration is performed with solutions of known CO<sub>2</sub> concentration
* Must be kept at 37°C  
    Hypothermia decreases solubility of CO<sub>2</sub> and therefore decreases pH 
* Electrodes must be kept clean from protein and not damaged
* Slow response time relative to pH electrode due to time taken for CO<sub>2</sub> to diffuse and react  
This can be accelerated with carbonic anhydrase


##Footnotes
[^1]: Technically pH is defined as the **activity** of H<sup>+</sup> in a solution. Clinically, activity is identical to concentration, so in medicine these definitions are functionally the same.


---
##References
1. Leslie RA, Johnson EK, Goodwin APL. Dr Podcast Scripts for the Primary FRCA. Cambridge University Press. 2011.
2. (FRCA - Measurement of pO2, pCO2, pH, pulse oximetry and capnography)[http://www.frca.co.uk/article.aspx?articleid=100389]
3. Aston D, Rivers A, Dharmadasa A. Equipment in Anaesthesia and Intensive Care: A complete guide for the FRCA. Scion Publishing Ltd. 2014.
