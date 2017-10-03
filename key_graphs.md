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
<img src="resources\dose-response.svg">

* Dose response curve is a wash-in exponential
* Difficult to compare different drugs using this curve

**Log<sub>Dose</sub>-Response:**  
<img src="resources\fatex.svg">

* Log-transform of dose allows different drugs to be compared
* Both red and blue drugs are full agonists (as they both reach 100% response), however the blue drug is more potent as it has a lower E<sub>D</sub>50

**Agonists:**  
<img src="resources\agonists-FA-IA-PA.svg">

* Partial agonists do not reach 100% response
* Inverse agonists have a negative response

**Antagonists:**  
<img src="resources\FA-with-nca-and-ca.svg">

* Non-competitive antagonists prevent maximal response being reached
* Competitive agonists right shift the curve, as they can be overcome with increasing dose of agonist

**Therapeutic Index:**  
<img src="resources\therapeutic-index.svg">

* Can be calculated from the ratio of the LD<sub>50</sub> and ED<sub>50</sub>


###Models
**The One-Compartment Model:**  


<img src="resources\1compartment.svg" style="width: 10pc;">

* Drug is added to and removed from the single central compartment  
There is no distribution possible.
* V<sub>1</sub> is equal to the volume of distribution
* k<sub>10</sub> is the rate constant for elimination

**Three-Compartment Model:**  


<img src="resources\3compartment.svg">

* Drug is added to and removed from the central compartment
* Drug will also distribute to (and redistribute from) the peripheral compartments
* Plasma concentration will depend on:
	* Rate of drug delivery
	* Rate of drug distribution and redistribution
	* Rate of drug elimination

**Effect-Site:**  


<img src="resources\3compartment+effect.svg">

* Drug distributes to the effect site from the central compartment
* Effect site has no volume, but does have rate constants
* t<sub>1/2</sub>ke0 is generally drawn with drug being eliminated from the effect site, however in reality this does not occur as drug should only be eliminated from the central compartment

###Pharmacokinetics
[**Zero-order kinetics:**](metabolism.md#kin)  


<img src="resources\zero-order-kinetics.svg">


* A constant amount of drug is eliminated per unit time
* Half-life is not a constant value  
Half-life progressively shortens, as the time taken to go from 50% to 25% is half the time it took to go from 100% to 50%.


[**First-Order Kinetics:**](metabolism.md#kin)  


<img src="resources\first-order-kinetics.svg">


* A constant proportion of drug is eliminated per unit time
* Half-life is a constant value

	
[**Biexponential elimination:**](pharmacokinetic_modelling.md#bi)  


<img src="resources\biexponent.svg">


* Note that concentration has been log-transformed
* This describes the elimination of drug from a two compartment model




###Pharmacodynamics
[**Isobologram:**](drug_interactions.md#iso)  


<img src="resources\isobologram.svg">


* Plots lines of equal activity versus concentratin of two drugs


[**Plasma-Site Targeting:**](tiva-and-tci.md#tci)


<img src="resources\plasma-site-targeting.svg">


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


<img src="resources\effect-site-targeting.svg">


* Plasma concentration overshoots effect-site target and then declines rapidly
* Effect site concentration rises rapidly, and is achieved more quickly compared with plasma-site targeted model




##Statistics
**Boxplot:**  


<img src="resources\boxplot.svg">


* Box is defined by the 25<sup>th</sup> and 75<sup>th</sup> centiles
* Line in the middle of the box is the median ("50<sup>th</sup> centile")
* "Whiskers" either side of the box define the 10<sup>th</sup> and 90<sup>th</sup> centiles
	* These may also refer to the 5<sup>th</sup> and 95<sup>th</sup> centiles
* Results outside of whiskers are defined as outliers, and are represented by single dots 


##Respiratory
###Oxygen
**Oxygen Cascade**:


<img src="resources\o2cascade.svg">


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


<img src="resources\oxyhb-curve.svg">


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


<img src="resources\oxy-hb-curve-shifts.svg">


* The curve may be right-shifted by:
	* Increased H<sup>+</sup>
	* Increased PaCO<sub>2</sub>
	* Increased temperature
	* Increased 2-3 DPG
* These shifts are defined by a movement of the p50


**Double-Bohr Effect:**  


<img src="resources\Oxyhb-curve-double-bohr.svg">

* The double Bohr effect can easily become confusing, especially when you are under pressure and only allowed one colour (as in the written exam)  
Here is a straightforward method which minimises the confusion:
	1. Draw an adult curve with a p50 of 27mmHg
	2. Draw a foetal curve with a p50 of 17mmHg
	3. Draw a right-shifted adult curve
	4. Draw a left-shifted foetal curve



**PaO<sub>2</sub> and Minute Ventilation:**  


<img src="resources\PaO2-vs-MV.svg">


* Exponential curve
* Minute ventilation doubles as PaO<sub>2</sub> decreases from 100mmHg to 60mmHg
* Inflection point is ~50-60mmHg  
Below this there is a large increase in ventilation.
* Hypercapnoea leads to a greater minute ventilation for any given PaO<sub>2</sub>



**Isoshunt Diagram:**  

<img src="resources\isoshunt.svg">

* Plots the relationship between PAO<sub>2</sub> versus PaO<sub>2</sub> for different (fixed) shunt fractions
* These are known as isoshunt lines
* Key isoshunt lines are:
	* At 50% shunt, PaO2 is essentially independent of PAO2
	* At 30% shunt, PaO2 will not increase above 100mmHg on 100% oxygen at atmospheric pressure

###Carbon Dioxide
**Carbon Dioxide Dissociation Curve:**  


<img src="resources\co2-dissociation-curve.svg">


* Graph of carbon dioxide content versus partial pressure
* Key points on this curve:
	* Arterial CO<sub>2</sub> content is 48mls.100ml<sup>-1</sup> of blood at 40mmHg
	* Mixed venous CO<sub>2</sub> content is 52.mls.100ml<sup>-1</sup> of blood at 46mmHg
* Note that the mixed venous curve is up-shifted due to the Haldane effect  
Remember that 50% of the difference in CO<sub>2</sub> content is due to the Haldane effect. Therefore:
	* The mixed venous curve should be drawn such that CO<sub>2</sub> content is 50mls.100ml<sup>-1</sup> at 40mmHg
	* The arterial curve should be drawn such that CO<sub>2</sub> content is 50mls.100ml<sup>-1</sup> at 46mmHg

**PaCO<sub>2</sub> and Minute Ventilation:**


<img src="resources\paco2-vs-MV.svg">


* Graphs the change in minute ventilation for **primary change in PaCO<sub>2</sub>**
* Remember that minute ventilation increases by ~3L.min<sup>-1</sup> for every 1mmHg increase in PaCO<sub>2</sub>  
From this, the relationship to other states can be derived:
	* Minute ventilation is reduced during sleep, but the central response to CO<sub>2</sub> is only minimally affected
	* The central response to CO<sub>2</sub> is heavily affected during anaesthesia
	* Minute ventilation is increased for any given PaCO<sub>2</sub> in the setting of acidosis


**Alveolar Ventilation and PaCO<sub>2</sub>:** 


<img src="resources\VA-vs-paco2.svg">


* Graphs the change in PaCO<sub>2</sub> for a **primary change in minute ventilation**
* Exponential curve as PaCO<sub>2</sub> is inversely proportional to minute ventilation
* Minute ventilation is increased for any given PaCO<sub>2</sub> during exercise


###Anatomical and Physiological Interactions
**Closing Capacity and Age:**  


<img src="resources\closing-capacity-vs-age.svg">


* Note that although FRC increases slightly with age, this is not generally shown on this graph
* Closing capacity increases with increasing age  
Key intersections are:
	* Greater than FRC when supine at 44 years of age
	* Greater than FRC when erect at 66 years of age
	

**Diffusion and Perfusion Limitation:**


<img src="resources\diffusion-vs-perfusion-limitation.svg">

* Classically drawn as partial pressure versus distance along the capillary  
Time along capillary may also be used, however note that total transit time will change with cardiac output.
* Note that at the beginning of the capillary, oxygen partial pressure will be equal to that of mixed venous blood
	* In perfusion limitation, PaO<sub>2</sub> will equal PAO<sub>2</sub> before the end of the capillary
	* In diffusion limitation, partial pressures will not be equal at the end of the capillary
	* In normal circumstances, PaO<sub>2</sub> equals PAO<sub>2</sub> at ~1/3<sup>2</sup> of the distance along the capillary  
	If time is being graphed on the x-axis, then this will occur at ~0.25s, as total capillary transit time is ~0.75s.
* Nitrous oxide rapidly diffuses into blood and is and not typically present in mixed venous blood, so this curve begins at the origin and PaN<sub>2</sub>O will rapidly reach PAN<sub>2</sub>O (in this instance 100mmHg)
* Carbon monoxide binds avidly to haemoglobin and so PaCO increases slowly, resulting in diffusion limitation

**Regional Ventilation and Perfusion:**  


<img src="resources\regional-ventilation-and-perfusion.svg">


* Graph of alveolar ventilation and alveolar blood flow versus rib number in the **erect** person
* Basal alveolar have greater perfusion and ventilation than apical alveoli
* Note the perfusion gradient is steeper than the ventilation gradient
* Note that the V/Q ratio is:
	* ~1 at the 3<sup>rd</sup> rib
	* ~3.3 at the apex
	* ~0.63 at the base


**Airway Resistance and Airway Generation:**


<img src="resources\airway-gen-vs-resistance.svg">


* Graph of airway resistance versus airway generation  
* Airway generations are from 1 to 23, and so this graph should not extend outside these values
* Airway resistance is maximal at the 5<sup>th</sup> generation  
This has the lowest total cross-sectional area.
* Airway resistance is negligible in the respiratory zone, which exists after the 15<sup>th</sup> generation


**Airway Resistance and Lung Volume:**


<img src="resources\lungvol-vs-airway-resistance.svg">



**Pulmonary Vascular Resistance and Pulmonary Artery Pressure:**  
<img src="resources\pap-vs-pvr.svg">

**Lung and Chest Wall Volume and Pressure Relationships:**
<img src="resources\lung-pressure-volume.svg">

**Lung Volume and Intrapleural Pressure:**  
<img src="resources\workofbreathing.svg">

**Lung Volume and Intrapleural Pressure with Forced Expiration:**  
<img src="resources\workofbreathing-obstructive.svg">


**Neonatal First Breath:**  
<img src="resources\First-Breath.svg">

###Spirometry
**Forced Vital Capacity:**  
<img src="resources\fev1-and-fvc.svg">


**Spirometry:**  
<img src="resources\spirograph.svg">



###Anaesthetic Agents
**F<sub>A</sub>/F<sub>I</sub>:**  
<img src="resources\fa-fi.svg">

**F<sub>A</sub>/F<sub>A0</sub>:**
<img src="resources\fa-fao.svg">


##Cardiovascular
**Left Ventricular Coronary Blood Flow:**  
<img src="resources\LV-cbf.svg">

**Right Ventricular Coronary Blood Flow:**  
<img src="resources\RV-cbf.svg">

**Baroreceptors:**  
<img src="resources\baroreceptors.svg">

**Starling Curve:**  
<img src="resources\starling-curve.svg">

**Starling Curve - Failing:**
<img src="resources\starling-curve-failing.svg">

**Cardiac Function Curve:**
<img src="resources\cardiac-function.svg">

**Wiggers Diagram:**
<img src="resources\Wiggers.svg">



###Action Potentials
**Pacemaker Potential:**  
<img src="resources\pacemaker-phases.svg">

**Pacemaker Potential - Ion Flux:**
<img src="resources\pacemaker-currents.svg">

**Pacemaker Potential - Autonomic Tone:**
<img src="resources\pacemaker-shifts.svg">

**Ventricular Action Potential:**
<img src="resources\ventricular-ap.svg">

**Ventricular Action Potential - Hyperkalaemia:**
<img src="resources\ventricular-ap-hyperk.svg">

###Basic Pressure-Volume Loops

###Advanced-Pressure Volume Loops
When drawing changes to more left-field pressure-volume loops which you may not have seen before approach them in the following way:
* How is preload changed?
* How is afterload changed?
* How is contractility changed?
* How are isovolumetric contraction and isovolumetric relaxation changed?

###Antiarrhythmics
**Ventricular Action Potential - Class Ia:**
<img src="resources\ventricular-ap-Ia.svg">

**Ventricular Action Potential - Class Ib:**
<img src="resources\ventricular-ap-Ib.svg">

**Ventricular Action Potential - Class Ic:**
<img src="resources\ventricular-ap-Ic.svg">

**Pacemaker Potential - Beta-Blockade:**  
<img src="resources\pacemaker-betablock.svg">

**Ventricular Action Potential - Class III:**
<img src="resources\ventricular-ap-III.svg">

**Pacemaker Potential - Calcium Channel Blockade:**  
<img src="resources\pacemaker-cablock.svg">

##CNS
**Monroe-Kellie Doctrine:**  
<img src="resources\monroe-kellie.svg">

**Cerebral Blood Flow and Cerebral Perfusion Pressure:**  
<img src="resources\CPP-vs-CBF.svg">

**Cerebral Blood Flow and PaCO<sub>2</sub>:**
<img src="resources\PaCO2-vsCBF.svg">

**Cerebral Blood Flow and PaO<sub>2</sub>:**
<img src="resources\PaO2-vs-CBF.svg">

**Cerebral Blood Flow and Temperature:**
<img src="resources\temp-vs-CBF.svg">



##Renal & Acid-Base
**Ionised potential vs pH - Acids:**
<img src="resources\pkas-acids.svg">

**Ionised potential vs pH - Bases:**
<img src="resources\pkas-bases.svg">

**Glomerular Filtration and Mean Arterial Pressure:**  
<img src="resources\renal-autoregulation.svg">

**Glomerular Filtration and Creatinine:**  
<img src="resources\gfr-vs-creatinine.svg">

**Glucose Flux:**  
<img src="resources\glucoseflux.svg">




##Haematology
**Coagulation Cascade:**  
<img src="resources\Coagulation_full.svg">


##Other
**Heat Loss Under Anaesthesia:**  
<img src="resources\heat-loss.svg">



##Equipment & Measurement
**Einthoven's Triangle:**  
<img src="resources\einthovens.svg">

**Damping and Resonance:**  
<img src="resources\damping.svg">

**Damping Coefficients:**  
<img src="resources\damping2.svg">

**Wheatstone Bridge:**  
<img src="resources\wheatstone.svg">


###Gas Analysis
**Clark Electrode:**  
<img src="resources\clark-electrode.svg">

**pH Electrode:**  
<img src="resources\ph-electrode.svg">

**Severinghaus Electrode:**  
<img src="resources\severinghaus.svg">



###Capnography
**Capnograph:**  
<img src="resources\capno-normal.svg">

**Capnograph - Obstructive:**  
<img src="resources\capno-obstruction.svg">

**Capnograph - Rebreathing:**  
<img src="resources\capno-rebreathing.svg">

**Capnograph - Hyperventilation:**  
<img src="resources\capno-hyperventilation.svg">


##Structure-Activity Relationships
###Sympathomimetics
<img src="resources\phenylethylamine.svg">

<img src="resources\dopamine bare.svg">

<img src="resources\dopamine.svg">

<img src="resources\noradrenaline bare.svg">

<img src="resources\noradrenaline.svg">

<img src="resources\adrenaline bare.svg">

<img src="resources\adrenaline.svg">

<img src="resources\metaraminol bare.svg">

<img src="resources\metaraminol.svg">

<img src="resources\ephedrine bare.svg">

<img src="resources\ephedrine.svg">

<img src="resources\phenylephrine bare.svg">

<img src="resources\phenylephrine.svg">

###Anaesthetic Agents
<img src="resources\desflurane.svg">

<img src="resources\sevoflurane 2.svg">

<img src="resources\isoflurane 1.svg">

<img src="resources\enflurane.svg">

<img src="resources\Propofol.svg">

---