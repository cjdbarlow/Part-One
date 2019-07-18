# Pulse Oximetry
> Describe the principles of pulse and tissue oximetry, ~~co-oximetry and capnography,~~ including calibration, sources of errors and limitations

Pulse oximetry relies on several principles:
* Oxygenated and deoxygenated haemoglobin **absorb light of different wavelengths** to different extents  
Light of **660nm** and **940nm** is used.
  * Deoxyhaemoglobin has a greater absorbance of red (660nm) light than oxyhaemoglobin
  * Oxyhaemoglobin has a greater absorbance of infrared (940nm) light than deoxyhaemoglobin
  * The relative absorbance of each allows determination of the proportions of oxygenated and deoxygenated haemoglobin


* The **Beer-Lambert Law(s)**:  
Absorption of light passing through a substance is directly proportional to both the distance it travels through the substance and the concentration of attenuating species within the substance. It is a composite of:
  * **Beer's Law**  
  Absorption of light is proportional to the concentration of "attenuating species"
  * **Lambert's Law**  
  Absorption is proportional to the thickness of the solution, or more precisely, that each layer of equal thickness absorbs an equal proportion of radiation that passes through it
 
 
* **Blood flow is pulsatile**  



###Method
A pulse oximeter consists of:
* Two diodes of the desired wavelengths
* Photocell
* Microprocessor


* During pulsatile flow, the expansion and contraction of the blood vessels alters the distance and haemoglobin concentrations, changing the absorption spectra of blood (as per the Beer-Lambert Law).

* Non-pulsatile elements are due to tissues and venous blood
* These are subtracted from the total, leaving the pulsatile element which represents the arterial component
* The **ratio of absorbance** of the **pulsatile** elements and the **non-pulsatile elements** is called **R**, and is calculated as:  
$$ R =$$ $${Pulsatile_{660} / Non-Pulsatile_{660}} \over Pulsatile_{940} / Non-Pulsatile_{940}$$
  * R is compared with a set of standardised values to deliver a calculated SpO<sub>2</sub>
    * An R of 1 gives an SpO<sub>2</sub> of 85%
    * An R of 0.4 gives an SpO<sub>2</sub> of 100%
    * An R of 2 gives an SpO<sub>2</sub> of 50%

####The Isobestic Point
* The **isobestic point** is the wavelength at which light is absorbed equally by both haemoglobin species
* Light absorption is therefore **independent** of saturation, and is instead a function of **haemoglobin concentration**
* This can be used to correct for haemoglobin concentration
* There are two isobestic points for oxygenated and deoxygenated haemoglobin, at **590nm** and **805nm**
        
##Limitations
* Requires detectable pulsatile flow
    * Limited by poor peripheral perfusion (shock, hypotension, hypothermia) and non-pulsatile flow (ECMO, CPB)
    * Body movements confound readings (shivering, seizing)


* Low saturations  
Inaccurate below 70%, and completely unreliable below 50%.


* Venous pulsation  
Detected as pulsatile flow, and erroneously interpreted by the microprocessor as arterial flow.


* Confounded by ambient light  
The diodes are cycled at several hundred times per second which allows the detector to compensate for the effect of ambient light (the values when the diodes are off give the effect of ambient light).


* Absorption spectra confounded by:
  * Haemoglobinopathies
    * Carboxyhaemoglobin causes the pulse oximeter to read artificially high due to as it also absorbs 660nm light
    * Methaemoglobinaemia causes the SpO<sub>2</sub> to trend towards 85%, as though it absorbs 660nm light is also absorbs 940nm light to a greater degree
  * Dyes
    * Methylene blue will cause the SpO<sub>2</sub> to read < 65% for several minutes
    * Indocyanine green will also cause a decreased SpO<sub>2</sub>


---
##References
1. Davis PD, Kenny D. Basic Physics and Measurement in Anaesthesia. 5th Ed. Elsevier. 2003.
2. Mardirossian G, Schneider RE. [Limitations of Pulse Oximetry](http://www.ncbi.nlm.nih.gov/pmc/articles/PMC2148612/pdf/anesthprog00255-0016.pdf). Anesth Prog 39:194-196 1992.
3. CICM March/May 2014
4. Tremper KK, Barker SJ. [Pulse oximetry](https://www.ncbi.nlm.nih.gov/pubmed/2643368). Anesthesiology. 1989 Jan;70(1):98-108.
5. Williams GW, Williams ES. Basic Anaesthesiology Examination Review. Oxford University Press. 2016.