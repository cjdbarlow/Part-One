#Pressure Waveform Analysis

> Describe the invasive and non-invasive measurement of ~~blood pressure and~~ cardiac output including calibration, sources of errors and limitations


Analysis of arterial pulse contour is:
* **Real-time** and **continuous**
* Used to **estimate** cardiac output  
Less accurate but also less invasive (e.g. [thermodilution](cardiac-output.md#therm)) or technically demanding (e.g. [echocardiography](principles_of_ultrasound.md#co)) than other methods.
	* Therefore also calculate (and often display) stroke volume variation and pulse pressure variation



##Principles
All models recognise that the **amplitude of the systolic upstroke** is:
* Directly proportional to **stroke volume**
* Inversely proportional to **arterial compliance**  


Other principles used by some (but not all) devices include:
* **Three-element Windkessel model**  
Characterises the arterial tree as having three major features:
	* Aortic Impedance
	* Arterial Compliance  
	Predicted using patient characteristics.
	* Systemic Vascular Resistance
* **Conservation of Mass**



##Devices
**Devices** can be **classified based on** whether they are:
* Calibrated/Uncalibrated
	* **Calibrated**  
	Initial estimation is refined using a dilution technique.
		* Dilutions may be by:
			* Thermodilution
				* Cold saline injected into SVC  
				Using an IJV or SCV CVC.
				* Temperature changed measured at the femoral artery
			* Lithium dilution
				* Small amounts of lithium chloride injected into a central vein
				* Change in lithium concentration measured in radial artery
				* CO by calculated [Stewart-Hamilton equation](cardiac-output.md#stew)
		* Periodically recalibrated to correct for drift
	* **Uncalibrated**  
	Not corrected for a measured 'true' cardiac output.
		* Inaccurate for short term changes in arterial properties  
		* Not validated in:
			* Shock
			* ARDS
			* Hepatic surgery  
			Due to changes in arterial tone.
			* Cardiac surgery
* Invasive/Non-invasive
	* Invasive  
	Rely on a (usually femoral) arterial catheter.
	* Non-invasive  
	Rely on the **volume clamp** method:
		* Inflatable cuff wrapped around finger
		* Plethysmograph estimates blood volume in the digital arteries
		* Cuff inflates and deflates throughout the cardiac cycle, keeping the volume of the arteries constant  
		Arterial pressure is proportional to cuff pressure.
		* **Inaccurate** in:
			* Periopehral oedema  
			* Vasoconstricted states


###Common Devices in Use
* PiCCO/VolumeView/FloTrac  
	* Calibrated
	* Invasive
	* 3-element Windkessel
	* Mechanism:
		* Calculates area under systolic part of the arterial curve
		* Divides calcualted area by aortic compliance  
		Compliance estimated by proprietary algorithm each time the device is calibrated.
	* SVR is continuosly estimated from calculated CO and measured BP
* LiDCO
	* Calibrated
	* Invasive
	* Conservation of mass
	* Compliance inferred from biometric data
* Clearsight/CNAP
	* Uncalibrated
	* Non-invasive
* T-Line
	* Calibrated  
	Proprietary, *non-validated* auto-calibrating algorithm.
	* Non-invasive
	* Uses radial applanation tonometry






---

##References
1. Jozwiak M, Monnet X, Teboul J-L. [Pressure Waveform Analysis](https://www.ncbi.nlm.nih.gov/pubmed/29077613). Anesth Analg. 2017.
2. Francis, SE. [Continuous Estimation of Cardiac Output and Arterial Resistance from Arterial Blood Pressure using a Third-Order Windkessel Model](https://lcp.mit.edu/pdf/FrancisThesis07.pdf). MIT. 2007.