#Key Graphs
Graphs:
* Help you to convey knowledge and understanding efficiently in the written
* Are often a feature of the viva as they allow examiners to assess depth of understanding
	* You will be asked to demonstrate how they change under different physiological states

It is easy to get distracted by the curve, and forget the basics (especially in the written). To avoid this, approach them in the same way each time:
* **Axis**  
First draw the axis.
	* If the axis is continuous (e.g. PaO<sub>2</sub>), ensure you place an arrow at the far end
	* If the axis ends at a fixed point (e.g. SpO<sub>2</sub>), ensure you place a bar at the end to signify it does not continue indefinitely
* **Labels**  
Label each axis with what it is representing.
* **Units**  
Give each label **appropriate units**.
	* In the viva, you can just say this out loud as you're drawing the axes
* **Curve**  
Draw the curve.
* **Special Points**  
Identify the key points of the curve and label these points. These include:
	* Intercepts
	* Inflection points 
	* Important values  
	e.g. The mixed venous point.

##Pharmacology
**Dose-Response:**  
<object data="resources\dose-response.svg" type="image/svg+xml" width="500"></object>

* Dose response curve is a wash-in exponential
* Difficult to compare different drugs using this curve

**Log<sub>Dose</sub>-Response:**  
<object data="resources\fatex.svg" type="image/svg+xml"></object>

* Log-transform of dose allows different drugs to be compared
* Both red and blue drugs are full agonists (as they both reach 100% response), however the blue drug is more potent as it has a lower E<sub>D</sub>50

**Agonists:**  
<object data="resources\agonists-FA-IA-PA.svg" type="image/svg+xml"></object>

* Partial agonists do not reach 100% response
* Inverse agonists have a negative response

**Antagonists:**  
<object data="resources\FA-with-nca-and-ca.svg" type="image/svg+xml"></object>

* Non-competitive antagonists prevent maximal response being reached
* Competitive agonists right shift the curve, as they can be overcome with increasing dose of agonist

**Therapeutic Index:**  
<object data="resources\therapeutic-index.svg" type="image/svg+xml"></object>

* Can be calculated from the ratio of the LD<sub>50</sub> and ED<sub>50</sub>


###Models
**The One-Compartment Model:**  
<object data="resources\1compartment.svg" type="image/svg+xml"></object>

* Drug is added to and removed from the single central compartment  
There is no distribution possible.
* V<sub>1</sub> is equal to the volume of distribution
* k<sub>10<sub> is the rate constant for elimination

**Three-Compartment Model:**  
<object data="resources\3compartment.svg" type="image/svg+xml"></object>

* Drug is added to and removed from the central compartment
* Drug will also distribute to (and redistribute from) the peripheral compartments
* Plasma concentration will depend on:
	* Rate of drug delivery
	* Rate of drug distribution and redistribution
	* Rate of drug elimination

**Effect-Site:**  
<object data="resources\3compartment+effect.svg" type="image/svg+xml"></object>

* Drug distributes to the effect site from the central compartment
* Effect site has no volume, but does have rate constants
* t<sub>1/2</sub>ke0 is generally drawn with drug being eliminated from the effect site, however in reality this does not occur as drug should only be eliminated from the central compartment

###Pharmacokinetics
[**Zero-order kinetics:**](metabolism.md#kin)  

<object data="resources\zero-order-kinetics.svg" type="image/svg+xml"></object>


* A constant amount of drug is eliminated per unit time
* Half-life is not a constant value  
Half-life progressively shortens, as the time taken to go from 50% to 25% is half the time it took to go from 100% to 50%.


[**First-Order Kinetics:**](metabolism.md#kin)  

<object data="resources\first-order-kinetics.svg" type="image/svg+xml"></object>


* A constant proportion of drug is eliminated per unit time
* Half-life is a constant value

	
[**Biexponential elimination:**](pharmacokinetic_modelling.md#bi)  

<object data="resources\biexponent.svg" type="image/svg+xml"></object>


* Note that concentration has been log-transformed
* This describes the elimination of drug from a two compartment model




###Pharmacodynamics
[**Isobologram:**](drug_interactions.md#iso)  


<object data="resources\isobologram.svg" type="image/svg+xml"></object>


* Plots lines of equal activity versus concentratin of two drugs


[**Plasma-Site Targeting:**](tiva-and-tci.md#tci)


<object data="resources\plasma-site-targeting.svg" type="image/svg+xml"></object>


TCI graphs are easy to draw if you remember that:
* The pump aims to achieve the targeted concentration:
	* As rapidly as possible
	* Without overshoot
* Effect site concentrations fall slower than plasma site concentrations
Drug can only redistribute back to plasma when effect site concentration is greater than plasma concentration.  

Therefore in plasma site targeting:
* Plasma concentration rises rapidly with initial bolus dose
* Does not overshoot
* Effect site concentration rises more slowly
	* Exponential wash in curve as the concentration gradient between plasma and effect site falls over time  


[**Effect-Site Targeting:**](tiva-and-tci.md#tci)


<object data="resources\effect-site-targeting.svg" type="image/svg+xml"></object>


* Plasma concentration overshoots effect-site target and then declines rapidly
* Effect site concentration rises rapidly, and is achieved more quickly compared with plasma-site targeted model




##Statistics
**Boxplot:**  


<object data="resources\boxplot.svg" type="image/svg+xml"></object>


* Box is defined by the 25<sup>th</sup> and 75<sup>th</sup> centiles
* Line in the middle of the box is the median ("50<sup>th</sup> centile")
* "Whiskers" either side of the box define the 10<sup>th</sup> and 90<sup>th</sup> centiles
	* These may also refer to the 5<sup>th</sup> and 95<sup>th</sup> centiles
* Results outside of whiskers are defined as outliers, and are represented by single dots 


##Respiratory
###Oxygen
**Oxygen Cascade**:


<object data="resources\o2cascade.svg" type="image/svg+xml"></object>


* Graph of location versus oxygen partial pressure
* Atmospheric (dry) air has a PO<sub>2</sub> of 160mmHg
* Tracheal (humidified) gas has a PO<sub>2</sub> of 149mmHg  
Reduced due to saturated vapour pressure of water.
* Alveolar gas has a PO<sub>2</sub> of 105mmHg  
Reduced to the presence of CO<sub>2</sub>, as per the alveolar gas equation.
* Arterial blood has a PO<sub>2</sub> of ~100mmHg  
Reduced to the Alveolar-arterial oxygen gradient.  
* Tissues have a PO<sub>2</sub> of ~5mmHg
* Mixed venous blood has a PO<sub>2</sub> of ~40mmHg  
Greater than tissue PO<sub>2</sub> as not all oxygen in blood diffuses into or is consumed by tissues.



**Oxyhaemoglobin Dissociation Curve:**


<object data="resources\oxyhb-curve.svg" type="image/svg+xml"></object>


* Graph of PaO<sub>2</sub> versus oxygen saturation
* Note that PaO2<sub>2</sub> is continuous, and so an arrow should be drawn at the tip of the x-axis, whilst saturation is finite and so the y-axis should be capped at 100%
* The curve is a sigmoid shape
* Key points:
	* At 10mmHg, saturation is 10%
	* The p50 is at 27mmHg
	* The mixed venous point is at 40mmHg, where haemoglobin is 75% saturated  
	Note that due to the Haldane effect, the mixed venous point does not technically exist on the arterial curve. This is a small point and is ignored in most graphs (including this one), but may be worth stating if you're feeling confident in the viva.
	* The "ICU point" (the upper inflection) is at 60mmHg where haemoglobin is 93% saturated  
	* The arterial point is 97% saturated at 100mmHg


<object data="resources\oxy-hb-curve-shifts.svg" type="image/svg+xml"></object>


* The curve may be right-shifted by:
	* Increased H<sup>+</sup>
	* Increased PaCO<sub>2</sub>
	* Increased temperature
	* Increased 2-3 DPG
* These shifts are defined by a movement of the p50


**Double-Bohr Effect:**  


<object data="resources\Oxyhb-curve-double-bohr.svg" type="image/svg+xml"></object>

* The double Bohr effect can easily become confusing, especially when you are under pressure and only allowed one colour (as in the written exam)  
Here is a straightforward method which minimises the confusion:
	1. Draw an adult curve with a p50 of 27mmHg
	2. Draw a foetal curve with a p50 of 17mmHg
	3. Draw a right-shifted adult curve
	4. Draw a left-shifted foetal curve



**PaO<sub>2</sub> and Minute Ventilation:**  
<object data="resources\PaO2-vs-MV.svg" type="image/svg+xml"></object>

**Isoshunt Diagram:**  

<object data="resources\isoshunt.svg" type="image/svg+xml"></object>


* At 50% shunt, PaO2 is essentially independent of PAO2
* At 30% shunt, PaO2 cannot increase above 100mmHg

###Carbon Dioxide
**Carbon Dioxide Dissociation Curve:**  
<object data="resources\co2-dissociation-curve.svg" type="image/svg+xml"></object>

**PaCO<sub>2</sub> and Minute Ventilation:**
<object data="resources\paco2-vs-MV.svg" type="image/svg+xml"></object>

**Alveolar Ventilation and PaCO<sub>2</sub>:** 
<object data="resources\VA-vs-paco2.svg" type="image/svg+xml"></object>



###Anatomical and Physiological Interactions
**Closing Capacity and Age:**  
<object data="resources\closing-capacity-vs-age.svg" type="image/svg+xml"></object>

**Diffusion and Perfusion Limitation:**
<object data="resources\diffusion-vs-perfusion-limitation.svg" type="image/svg+xml"></object>

**Regional Ventilation and Perfusion:**  
<object data="resources\regional-ventilation-and-perfusion.svg" type="image/svg+xml"></object>

**Airway Resistance and Airway Generation:**
<object data="resources\airway-gen-vs-resistance.svg" type="image/svg+xml"></object>

**Airway Resistance and Lung Volume:**
<object data="resources\lungvol-vs-airway-resistance.svg" type="image/svg+xml"></object>

**Pulmonary Vascular Resistance and Pulmonary Artery Pressure:**  
<object data="resources\pap-vs-pvr.svg" type="image/svg+xml"></object>

**Lung and Chest Wall Volume and Pressure Relationships:**
<object data="resources\lung-pressure-volume.svg" type="image/svg+xml"></object>

**Lung Volume and Intrapleural Pressure:**  
<object data="resources\workofbreathing.svg" type="image/svg+xml"></object>

**Lung Volume and Intrapleural Pressure with Forced Expiration:**  
<object data="resources\workofbreathing-obstructive.svg" type="image/svg+xml"></object>


**Neonatal First Breath:**  
<object data="resources\First-Breath.svg" type="image/svg+xml"></object>

###Spirometry
**Forced Vital Capacity:**  
<object data="resources\fev1-and-fvc.svg" type="image/svg+xml"></object>


**Spirometry:**  
<object data="resources\spirograph.svg" type="image/svg+xml"></object>



###Anaesthetic Agents
**F<sub>A</sub>/F<sub>I</sub>:**  
<object data="resources\fa-fi.svg" type="image/svg+xml"></object>

**F<sub>A</sub>/F<sub>A0</sub>:**
<object data="resources\fa-fao.svg" type="image/svg+xml"></object>


##Cardiovascular
**Left Ventricular Coronary Blood Flow:**  
<object data="resources\LV-cbf.svg" type="image/svg+xml"></object>

**Right Ventricular Coronary Blood Flow:**  
<object data="resources\RV-cbf.svg" type="image/svg+xml"></object>

**Baroreceptors:**  
<object data="resources\baroreceptors.svg" type="image/svg+xml"></object>

**Starling Curve:**  
<object data="resources\starling-curve.svg" type="image/svg+xml"></object>

**Starling Curve - Failing:**
<object data="resources\starling-curve-failing.svg" type="image/svg+xml"></object>

**Cardiac Function Curve:**
<object data="resources\cardiac-function.svg" type="image/svg+xml"></object>

**Wiggers Diagram:**
<object data="resources\Wiggers.svg" type="image/svg+xml"></object>



###Action Potentials
**Pacemaker Potential:**  
<object data="resources\pacemaker-phases.svg" type="image/svg+xml"></object>

**Pacemaker Potential - Ion Flux:**
<object data="resources\pacemaker-currents.svg" type="image/svg+xml"></object>

**Pacemaker Potential - Autonomic Tone:**
<object data="resources\pacemaker-shifts.svg" type="image/svg+xml"></object>

**Ventricular Action Potential:**
<object data="resources\ventricular-ap.svg" type="image/svg+xml"></object>

**Ventricular Action Potential - Hyperkalaemia:**
<object data="resources\ventricular-ap-hyperk.svg" type="image/svg+xml"></object>

###Basic Pressure-Volume Loops

###Advanced-Pressure Volume Loops
When drawing changes to more left-field pressure-volume loops which you may not have seen before approach them in the following way:
* How is preload changed?
* How is afterload changed?
* How is contractility changed?
* How are isovolumetric contraction and isovolumetric relaxation changed?

###Antiarrhythmics
**Ventricular Action Potential - Class Ia:**
<object data="resources\ventricular-ap-Ia.svg" type="image/svg+xml"></object>

**Ventricular Action Potential - Class Ib:**
<object data="resources\ventricular-ap-Ib.svg" type="image/svg+xml"></object>

**Ventricular Action Potential - Class Ic:**
<object data="resources\ventricular-ap-Ic.svg" type="image/svg+xml"></object>

**Pacemaker Potential - Beta-Blockade:**  
<object data="resources\pacemaker-betablock.svg" type="image/svg+xml"></object>

**Ventricular Action Potential - Class III:**
<object data="resources\ventricular-ap-III.svg" type="image/svg+xml"></object>

**Pacemaker Potential - Calcium Channel Blockade:**  
<object data="resources\pacemaker-cablock.svg" type="image/svg+xml"></object>

##CNS
**Monroe-Kellie Doctrine:**  
<object data="resources\monroe-kellie.svg" type="image/svg+xml"></object>

**Cerebral Blood Flow and Cerebral Perfusion Pressure:**  
<object data="resources\CPP-vs-CBF.svg" type="image/svg+xml"></object>

**Cerebral Blood Flow and PaCO<sub>2</sub>:**
<object data="resources\PaCO2-vsCBF.svg" type="image/svg+xml"></object>

**Cerebral Blood Flow and PaO<sub>2</sub>:**
<object data="resources\PaO2-vs-CBF.svg" type="image/svg+xml"></object>

**Cerebral Blood Flow and Temperature:**
<object data="resources\temp-vs-CBF.svg" type="image/svg+xml"></object>



##Renal & Acid-Base
**Ionised potential vs pH - Acids:**
<object data="resources\pkas-acids.svg" type="image/svg+xml"></object>

**Ionised potential vs pH - Bases:**
<object data="resources\pkas-bases.svg" type="image/svg+xml"></object>

**Glomerular Filtration and Mean Arterial Pressure:**  
<object data="resources\renal-autoregulation.svg" type="image/svg+xml"></object>

**Glomerular Filtration and Creatinine:**  
<object data="resources\gfr-vs-creatinine.svg" type="image/svg+xml"></object>

**Glucose Flux:**  
<object data="resources\glucoseflux.svg" type="image/svg+xml"></object>




##Haematology
**Coagulation Cascade:**  
<object data="resources\Coagulation_full.svg" type="image/svg+xml"></object>


##Other
**Heat Loss Under Anaesthesia:**  
<object data="resources\heat-loss.svg" type="image/svg+xml"></object>



##Equipment & Measurement
**Einthoven's Triangle:**  
<object data="resources\einthovens.svg" type="image/svg+xml"></object>

**Damping and Resonance:**  
<object data="resources\damping.svg" type="image/svg+xml"></object>

**Damping Coefficients:**  
<object data="resources\damping2.svg" type="image/svg+xml"></object>

**Wheatstone Bridge:**  
<object data="resources\wheatstone.svg" type="image/svg+xml"></object>


###Gas Analysis
**Clark Electrode:**  
<object data="resources\clark-electrode.svg" type="image/svg+xml"></object>

**pH Electrode:**  
<object data="resources\ph-electrode.svg" type="image/svg+xml"></object>

**Severinghaus Electrode:**  
<object data="resources\severinghaus.svg" type="image/svg+xml"></object>



###Capnography
**Capnograph:**  
<object data="resources\capno-normal.svg" type="image/svg+xml"></object>

**Capnograph - Obstructive:**  
<object data="resources\capno-obstruction.svg" type="image/svg+xml"></object>

**Capnograph - Rebreathing:**  
<object data="resources\capno-rebreathing.svg" type="image/svg+xml"></object>

**Capnograph - Hyperventilation:**  
<object data="resources\capno-hyperventilation.svg" type="image/svg+xml"></object>


##Structure-Activity Relationships
###Sympathomimetics
<object data="resources\phenylethylamine.svg" type="image/svg+xml"></object>

<object data="resources\dopamine bare.svg" type="image/svg+xml"></object>

<object data="resources\dopamine.svg" type="image/svg+xml"></object>

<object data="resources\noradrenaline bare.svg" type="image/svg+xml"></object>

<object data="resources\noradrenaline.svg" type="image/svg+xml"></object>

<object data="resources\adrenaline bare.svg" type="image/svg+xml"></object>

<object data="resources\adrenaline.svg" type="image/svg+xml"></object>

<object data="resources\metaraminol bare.svg" type="image/svg+xml"></object>

<object data="resources\metaraminol.svg" type="image/svg+xml"></object>

<object data="resources\ephedrine bare.svg" type="image/svg+xml"></object>

<object data="resources\ephedrine.svg" type="image/svg+xml"></object>

<object data="resources\phenylephrine bare.svg" type="image/svg+xml"></object>

<object data="resources\phenylephrine.svg" type="image/svg+xml"></object>

###Anaesthetic Agents
<object data="resources\desflurane.svg" type="image/svg+xml"></object>

<object data="resources\sevoflurane 2.svg" type="image/svg+xml"></object>

<object data="resources\isoflurane 1.svg" type="image/svg+xml"></object>

<object data="resources\enflurane.svg" type="image/svg+xml"></object>

<object data="resources\Propofol.svg" type="image/svg+xml"></object>

---