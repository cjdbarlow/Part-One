#Cardiac Output Measurement

> Describe the invasive and non-invasive measurement of ~~blood pressure and~~ cardiac output including calibration, sources of errors and limitations

> Explain the derived values from common methods of measurement of cardiac output (i.e. measures of vascular resistance)

Cardiac output measurement can be performed:
* Invasively
    * Pulmonary Artery Catheter
        * Thermodilution
        * Fick Principle
    * TOE
    * Arterial waveform analysis
        * PiCCO
        * Vigileo
* Non-invasively
    * TTE
    * MRI
    * Thoracic impedance

##Thermodilution{#therm}
Thermodilution remains the gold standard of cardiac output measurement.

This technique:
* Requires a pulmonary artery catheter  
Various different designs exist. For CO measurement, they require:
    * A proximal port at the RA/SVC
    * A temperature probe at the tip  
    Typically a silicon oxide thermistor.
    * A balloon at the tip  
    To float it into position.
    * A distal (PA) port is required for measuring PAP and the PCWP, but is not required for CO calculation
 

###Method for Intermittent Cardiac Output Measurement by Thermodilution{#stew}
* A known volume of (typically dextrose) at a known temperature (classically cooled, but this is not required) is injected into the proximal port
* The temperature of blood is measured at the tip  
This produces a temperature-time curve.
* The area under the curve can be used to calculate cardiac output, as per the modified Stewart-Hamilton Equation:  
$$Q = {V(T_B - T_I) k_1 k_2 \over \int_{t_1}^{t_2} \Delta T dt}$$, where:
    * $$Q$$ = Cardiac output
    * $$V$$ = Volume of injectate
    * $$T_B$$ = Temperature of blood
    * $$T_I$$ = Temperature of injectate
    * $$k_1$$ = Density constant  
    Relates to the specific heat and specific gravity of both injectate and blood.
    * $$k_2$$ = Computation constant  
    Accounts for catheter dead space and heat exchange during injection.
    * $${\int_{t_1}^{t_2} \Delta T dt}$$ = Area under the change in temperature-time curve

###Errors in Thermodilution
> Any factor that spuriously reduces the area under the thermodilution curve will result in an overestimation of CO.

* Natural variability  
Cardiac output varies up to 10% with changes in intrathoracic pressure during respiration. Therefore:
    * A mean of 3-5 measurements should be taken
    * Measurements should be taken at end-expiration
* Incorrect volume of injectate
    * Too much underestimates CO
    * Too little overestimates CO
* Warm fluid  
The closer the temperature of injectate is to blood, the greater degree of error introduced to the measurement.
    * Colder injectate is more accurate, but carries the risk of inducing bradyarrhythmias
* Poorly positioned PAC  
The PAC must be positioned in West's Zone 3 for blood flow to occur past the tip, and for the measured temperature to be accurate.
* Tricuspid regurgitation or Pulmonary regurgitation
Results in retrograde ejection of injectate back past the valve, resulting in a prolonged decay time of the thermodilution curve. This *usually* results in **underestimation of CO**, but can result in overestimation depending on the severity of regurgitation and the true CO.
* Shunts  
Thermodilution measures RV CO only. LV CO and RV CO are likely to not be equal in the presence of intra- or extra-cardiac shunts. This can be corrected for by calculating shunt fraction, but is not performed by bedside CO computers.
* Arrhythmia
* Fluctuation in BP  
Rapid changes in temperature result in unreliable measurements; classically seen in the few minutes after weaning from cardiopulmonary bypass when the core is rewarming.

##Fick Principle
Cardiac Output can also be measured using the Fick Principle. This technique:
* Uses the Fick Principle  
The flow of blood to an organ is equal to the uptake of a tracer substance divided by the arterio-venous concentration difference.
    * In this case, the tracer substance is oxygen
    * The 'organ' is the whole body
    * This produces the equation: $$CO = {VO_2 \over C_a - C_v}$$, where:
        * $$CO$$ is Cardiac Output
        * $$VO_2$$ is the patients oxygen consumption  
        Typically estimated as 3.5ml.kg<sup>-1</sup>.min<sup>-1</sup>
        * $$C_a$$ is arterial oxygen content
        * $$C_v$$ is mixed venous oxygen content
* Relies on mixed venous blood sampled from the pulmonary artery, and arterial blood sampled from a peripheral arterial line


---
##References
1.  Moise, S. F., Sinclair, C. J. and Scott, D. H. T. (2002), Pulmonary artery blood temperature and the measurement of cardiac output by thermodilution. Anaesthesia, 57: 562–566.
2. Nishikawa, T. & Dohi, S. Errors in the measurement of cardiac output by thermodilution. Can J Anaesth (1993) 40: 142. 

