#End-Tidal Gas Analysis
> Describe the principles of ~~pulse and tissue oximetry, co-oximetry and~~ capnography, including calibration, sources of errors and limitations 

##Principles
Several mechanisms for E<sub>T</sub>CO<sub>2</sub> measurement exist:
* Infrared Spectroscopy
* Colourimetric Methods
* Rayman Scattering
* Gas Chromatography

##Infrared Spectroscopy
Infrared spectroscopy relies on the fact that:
* Gases with two or more different atoms will **absorb infrared radiation**
* **Different gases absorbing different wavelengths** to different degrees
* Measuring the absorbed wavelengths and comparing with the **likely composition** of a mixture, a system can be designed using a specific wavelength to measure gas concentrations and avoid interference


End-tidal gas analysis using infrared light is used in the measurement of:
* CO<sub>2</sub>  
Capnography is the continuous measurement and graphical display of the partial pressure of CO<sub>2</sub> in expired gas. This is the most common method to measure E<sub>T</sub>CO<sub>2</sub>. 
* Anaesthetic agents

##Measurement of CO<sub>2</sub>
Components:
* Sapphire sampling chamber containing gas sample  
    * CO<sub>2</sub> absorbs infrared radiation at a peak wavelength of 4.28μm
    * The sapphire lens only allows 4.28μm light through
* Emitter
* Detector
* Microprocessor
* Display


Method:
* Light is emitted and passes through the sampling chamber  
A lens is used to focus emitted light.
* Levels of radiation are measured on the other side of the chamber  
* Levels correspond to the amount of gas present in the sample
* The less radiation that reaches the detector, the more gas there is in the sample absorbing it


###Equipment Errors
Errors can be classified into:
* Specific to technique
    * The **collision broadening effect**  
    Intermolecular forces vary depending on their proximity to other molecules in the gas mixture. A change in intermolecular forces may alter their bond-energy and the frequencies at which they absorb radiation. It can be overcome by:
        * Correcting for the presence of other gases
        * Manually adjusting the obtained values
    * Crossover with other gas mixtures  
    CO<sub>2</sub> and N<sub>2</sub>O have similar absorbance spectra, and may lead to error when a device is not designed to measure both wavelengths.


* Failure of equipment  
These can be overcome by use of **double-beam capnometer**. This uses a reference chamber which contains CO<sub>2</sub>-free air, and the same emitter-detector system. All absorption from this system must occur due to artifact (as no CO<sub>2</sub> is present). The artifactual component is then subtracted from the value detected in the main chamber. This corrects for:
    * Variable amount of infrared radiation released
    * Variable sensitivity of the detector
    * Variable efficacy of the crystal window and lens system


* Relating to type of capnometer used  
E<sub>T</sub>CO<sub>2</sub> may be either **side-stream** or **in-line**.
    * Side-stream CO<sub>2</sub> involves a length of narrow tubing drawing gas from the expiratory limb of the breathing circuit (typically from the HME filter) to the capnograph
        * Side-stream requires a flow of 150 ml.min<sup>-1</sup>  
        * Has a (pretty insignificant) delay (<1s) in measurement
        * May be blocked by water vapour, and require use of a water trap to remove condensation
    * In-line systems have a sampling chamber attached in-line with the ETT
        * The sampling chamber slightly increases the dead-space of the circuit  
        May be relevant in children or very difficult to ventilate patients.
        * Adds weight to patient end of the breathing circuit
        * Require heating to 41°C to avoid condensation


###E<sub>T</sub>CO<sub>2</sub> Waveform and Variations
<object data="resources\capno-normal.svg" type="image/svg+xml"></object>

The normal trace consists of four components:
1. The **baseline**  
This consists of:
    * Inspiratory time
    * Early **dead-space exhalation**  
    This is the period immediately before phase 2, where some gas with a PCO<sub>2</sub> of **0** is exhaled.
2. **Alveolar exhalation**, where PCO<sub>2</sub> **rises rapidly**
3. **Alveolar plateau**, where PCO<sub>2</sub> **flattens**  
The highest-point of this curve is labelled E<sub>T</sub>CO<sub>2</sub>.
4. **Inspiration**, where PCO<sub>2</sub> returns to **0**

Airway obstruction:
<object data="resources\capno-obstruction.svg" type="image/svg+xml"></object>
* Occurs due to uneven emptying of alveoli with different time-constants

Hyperventilation:
<object data="resources\capno-hyperventilation.svg" type="image/svg+xml"></object>
* Lower E<sub>T</sub>CO<sub>2</sub> with shorter baseline
* Plateau phase may not occur at very high respiratory rates

Rebreathing:
<object data="resources\capno-rebreathing.svg" type="image/svg+xml"></object>
* Baseline increases as inspired CO<sub>2</sub> is measured from gas analyser




###Changes in E<sub>T</sub>CO<sub>2</sub>
Normal E<sub>T</sub>CO<sub>2</sub> is 32-42 mmHg, whilst normal PaCO<sub>2</sub> is 35-45 mmHg.

####High E<sub>T</sub>CO<sub>2</sub>
This may be from:
* Decreased ventilation
    * Decreased RR
    * Decreased V<sub>T</sub>
    * Increased V<sub>D</sub> and therefore a greater V<sub>D</sub>:V<sub>T</sub> ratio
* Increased production of CO<sub>2</sub>
    * Increased metabolic rate
        * Sepsis
    * Torniquet release
    * ROSC following arrest
* Increased inspired 
    * Rebreathing (i.e. equipment/ventilator malfunction)
    * External source of added CO<sub>2</sub>

####Low E<sub>T</sub>CO<sub>2</sub>
#####Rapid Loss of E<sub>T</sub>CO<sub>2</sub>
* Failure of ventilation
    * Circuit disconnect
    * Airway obstruction
    * Bronchospasm
* Failure of circulation
    * Cardiac arrest
    * Shock

#####Gradual Loss of E<sub>T</sub>CO<sub>2</sub>
* Increased V<sub>A</sub> (i.e. increased MV)
* Decreased CO<sub>2</sub> production
    * Hypometabolic state
        * Hypothermia
* Increased V<sub>D</sub>, i.e. V/Q mismatch
    * Increased West Zone I physiology:
        * Hypotension
        * Increased RV Afterload:
            * PE
            * High PEEP
* Sampling error
    * Air entrainment into the sample chamber
    * Inadequate V<sub>T</sub>

###Discrepancy between E<sub>T</sub>CO<sub>2</sub>, PACO<sub>2</sub>, and PaCO<sub>2</sub>
The normal gradient between PaCO<sub>2</sub> and E<sub>T</sub>CO<sub>2</sub> is 0-5 mmHg. Healthy and awake individuals should have essentially no (<1ml) alveolar dead space, and so essentially no gradient. This gradient is increased in patients with:
* V/Q mismatch
    * E<sub>T</sub>CO<sub>2</sub> will underestimate arterial CO<sub>2</sub> as gas from un-perfused alveoli (with negligible CO<sub>2</sub>) will dilute CO<sub>2</sub> expired gas

##Colourimetric Methods
Litmus paper which changes colour when exposed to hydrogen ions (produced by CO<sub>2</sub>) can be used to confirm endo-tracheal intubation, though they may generate false-positive results due to gastric pH.


##References
1. Cross ME, Plunkett EVE. Physics, Pharmacology, and Physiology for Anaesthetists: Key Concepts for the FRCA. 2nd Ed. Cambridge University Press. 2014.
2. Davis PD, Kenny D. Basic Physics and Measurement in Anaesthesia. 5th Ed. Elsevier. 2003.
3. Leslie RA, Johnson EK, Goodwin APL. Dr Podcast Scripts for the Primary FRCA. Cambridge University Press. 2011.