# Pressure-Volume Relationships
>Describe the pressure-volume relationships of the ventricles and their clinical applications

**Left Ventricular P-V Loop:**

<img src="\resources\lv-pv-loop.svg">


* Plot of left ventricular volume versus pressure
* Time is *not* directly demonstrated on this graph, but the stages of the cardiac cycle can be inferred:
	* A-B is isovolumetric relaxation  
	Ventricular pressure is less than aortic pressure but greater than atrial pressure, so both mitral and aortic valves are closed.
	* B-C is rapid and slow ventricular filling, followed by atrial systole  
	Atrial systole is sometimes demonstrated by a sharp 'bump' towards C, as ventricular pressure will briefly rise out of proportion to ventricular volume
	* C-D is isovolumetric contraction  
	The ventricle contracts. As ventricular pressure is greater than atrial pressure but less than aortic pressure, the mitral valve closes (point C) and the aortic valve remains closed. Pressure increases without a change in volume.
		* This slope of this line is known as the **dP/dt<sub>max</sub>** ($$\Delta P \over \Delta T$$), and is an index of [contractility](determinants_of_cardiac_output.md#cont)
	* D-A is ventricular ejection  
	When ventricular pressure exceeds aortic pressure, blood is ejected into the aorta and ventricular volume decreases.
* The slope of the line B-C gives the elastance of the ventricle  
This is also known as the **End-Diastolic Pressure Volume Relationship (EDPVR)**, and is often (erroneously) referred to as ventricular compliance.
	* **Elastance** of the ventricle **increases as it is filled**  
	This is demonstrated by the dashed line.  
		* The ventricle only overfills at high filling pressures
	* Increased elastance (such as in **diastolic dysfunction**) is demonstrated by an **increased slope** of this line, such that ventricular pressure will be higher at any given volume  
	Both ventricular and arterial elastance are low in normal circumstances (a state known as ventricular-arterial coupling), as this allows the ventricle to achieve a wide range of volume transfers in ejection with minimal change in filling pressure.
* The horizontal distance between point B (ESV) and C (EDV) give the stroke volume  
**Ejection fraction** can then be calculated.
* **Preload** is given by the EDV
* **Afterload** is:
	* *Technically given* by the pressure-volume relationship throughout the entirety of ejection  
	i.e. the slope D-A.
		* This comes from La Place's law:  
		$$Afterload = {P_{ejection} \times Radius_{ejection} \over 2 \times Wall \ Thickness}$$ 
	* Usually *assumed to given* by the slope of a line drawn from the EDV (on the x-axis) to the **end-systolic point** (point A)  
	This is also known as the arterial elastance line.
		* The gradient of the arterial elastance line can be worked out from the loops $$ E_A = {Pressure_{End-Systole} \over Stroke \ Volume}$$
		* This is different from the above formula because it only considers the pressure-volume relationship at end-systole, not throughout the entirety of ejection
		* $$E_A$$ is a good substitute for afterload because it is relatively independent of preload and contractility, and will vary with changes in afterload  
		i.e. For a given stroke volume, an increase in $$E_a$$ leads to an increase in SBP. Similarly, if the ventricle is unable to maintain a given stroke volume as $$E_a$$ increases, then SBP will fall.
* **Contractility** is given by the slope of the end-systolic pressure volume-relationship  
Also known as elastance at end-systole, or $$E_{es}$$, and is given by the tangent to the curve at end-systole.
	* This measurement is not entirely independent of other factors, as it is influenced by afterload


##Basic Pressure-Volume Loops{#base}
These loops:
* Show isolated changes to one factor only
* Are not accurate of real-world physiology  
In reality:
	* Changing one factor will influence other factors
	* These values change beat-to-beat

**Left Ventricular P-V Loop - Increased Preload:**

<img src="\resources\lv-pv-loop-preload.svg">

* EDV is increased, by definition
* The slope of the ESPVR remains unchanged (as contractility is unchanged)
* The slope of the afterload line ($$E_{ea}$$) is unchanged (as afterload is unchanged), but it is right-shifted due to the increased end-diastolic volume
* ESV is increased, though less than EDV, such that stroke volume increases

**Left Ventricular P-V Loop - Increased Afterload:**


<img src="\resources\lv-pv-loop-afterload.svg">

* EDV is unchanged (as preload is unchanged)
* The slope of the ESPVR remains unchanged (as contractility is unchanged)
* The slope of the afterload line ($$E_{ea}$$) has increased, but its x-intercept is unchanged  
Note that the pressure-volume relationship throughout ejection is also steeper, and diastolic pressure has increased.
* ESV is increased, causing a reduction in stroke volume

**Left Ventricular P-V Loop - Increased Contractility:**

<img src="\resources\lv-pv-loop-contractility.svg">

* EDV is unchanged (as preload is unchanged)
* The slope and x-intercept of the afterload line ($$E_{ea}$$) is unchanged (as afterload is unchanged)
* The slope of the ESPVR has increased, though its x-intercept is the same
* ESV is decreased, causing an increase in stroke volume



##Advanced Pressure Volume Loops{#adv}
The easiest way to approach more complicated pressure-volume loops is to address each of the basic factors before trying to draw the curve:
* How is preload changed?
* How is afterload changed?
* How is contractility changed?
* How are isovolumetric contraction and isovolumetric relaxation changed?


These show the loop for the primary physiological change, *without compensatory responses*:

**Left Ventricular P-V Loop - Aortic Stenosis:**

<img src="\resources\lv-pv-loop-aorticstenosis.svg">

* Preload is increased due to the higher ESV, as the ventricle starts filling from a higher point
* Outflow tract impedance increases ventricular wall stress and therefore afterload  
This leads to the decrease in stroke volume.
* Contractility is unchanged

**Left Ventricular P-V Loop - Aortic Regurgitation:**

<img src="\resources\lv-pv-loop-aorticregurg.svg">

* Preload is dramatically increased as the ventricle fills from both the aorta and atria during diastole
* Afterload is increased due to the greater wall stress during ejection
* Contractility is unchanged
* There is no true isovolumetric relaxation, as the ventricle will begin to fill from the aorta at the completion of ejection
* Diastolic pressure is decreased and so the period of isovolumetric contraction is brief

**Left Ventricular P-V Loop - Mitral Stenosis:**


<img src="\resources\lv-pv-loop-ms.svg">


* Preload is reduced due to the increased gradient across the mitral valve  
The effect of this is heart rate dependent, and will worsen as heart rate increases.
* Afterload is unchanged  
Afterload may fall due to the reduction in ventricular wall stress.
* Contractility is unchanged
* ESV decreases (due to the reduced preload), though less than EDV, such that stroke volume is reduced

**Left Ventricular P-V Loop - Mitral Regurgitation:**


<img src="\resources\lv-pv-loop-mr.svg">

* Preload is increased as the regurgitant volume increases left atrial pressure and therefore ventricular filling pressure
* Afterload is reduced as blood is ejected into the low-pressure atrial system
* Contractility is unchanged
* There is no true isovolumetric contraction phase as blood is ejected into the atria while ventricular pressure exceeds atrial pressure
* There is no true isovolumetric relaxation phase, as once atrial pressure exceeds ventricular pressure the ventricle will begin to fill
* *Apparent* stroke volume is increased due to the large difference between EDV and ESV, however *effective* stroke volume is reduced as only a portion of this is forward flow

**Right Ventricular P-V Loop:**

<img src="\resources\rv-pv-loop.svg">

* The right ventricular curve is very different to the left ventricular curve
* RV preload is increased relative to LV preload  
Note that stroke volume is the same (as both sides should have the same cardiac output).
* RV afterload is dramatically reduced due to the low-resistance pulmonary circulation  
	* Much of the RV ejection occurs after systolic pressure is reached
	* The right ventricle is very sensitive to changes in afterload
* Contractility is reduced  
Right heart contractility is partially dependent on coordinated contraction with the LV (particularly the septum), and therefore is decreased with LV systolic failure or conducting system disease (such as bundle brach block).

---

##Footnotes

The Khan Academy series [Changing the Pressure-Volume Loop](https://www.khanacademy.org/science/health-and-medicine/circulatory-system#changing-the-pv-loop-nm) is a fantastic introduction to the topic.

---

##References
1. Brandis K. [The Physiology Viva: Questions & Answers](http://www.anaesthesiamcq.com/vivabook.php). 2003.
2. Klabunde, RE. [Ventricular Pressure-Volume Relationship(http://www.cvphysiology.com/Cardiac%20Function/CF024). Cardiovascular Physiology Concepts. 2015.
3. Desai, R. [Arterial elastance (Ea) and afterload](https://www.khanacademy.org/science/health-and-medicine/circulatory-system/changing-the-pv-loop-nm/v/arterial-elastance-ea-and-afterload). Khan Academy. 
4. Redington, AN. [Cardiopulmonary and Right–Left Heart Interactions](https://thoracickey.com/cardiopulmonary-and-right-left-heart-interactions/). Thoracic Key.
5. Borlaug BA, Kass DA. [Ventricular-Vascular Interaction in Heart Failure](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC2586173/pdf/nihms45916.pdf). Heart failure clinics. 2008;4(1):23-36.