# Shunt
> Explain the concept of shunt and its measurement

Shunt is blood reaching the systemic circulation without being oxygenated via passage through the lungs.

##Factors Contributing to Shunt
* Normal shunt
    * Anatomical shunt  
        * Thebesian veins, which drain directly into the left cardiac chambers
        * Bronchial circulations, which drain into the pulmonary veins
    * Functional shunt  
    Blood draining through alveoli with a V/Q between 0 and 1.
      * This may not be true shunt, as blood may have some oxygen content but not be maximally oxygenated
* Pathological shunt  
Pathological shunting can be anatomical (e.g congential cardiac malformations), or physiological (e.g. pneumonia causing alveolar consolidation).
    * Intra-cardiac
      e.g. VSD
    * Extra-cardiac  
      e.g. Pulmonary AVM, PDA  

##Calculation of Shunt
* Shunt cannot be directly measured
* This is because we cannot separate true shunt (V = 0) from V/Q scatter (V/Q < 1) when sampling blood entering the left heart
* **Venous admixture** is used instead  
Venous admixture is **the amount of mixed venous blood that must be added to pulmonary end-capillary blood to give the observed arterial oxygen *content***. Venous admixture:
  * Is a calculated, theoretical value
  * Assumes that alveoli have either complete shunt (no ventilation at all, i.e. V/Q = 0) or no shunt (V/Q = 1)
  * Is expressed as a ratio, or **shunt fraction**:  
  $${\dot{Q}_S \over \dot{Q}_T }= {C_cO_2 - C_aO_2 \over C_cO_2 - C_vO_2 }$$, where:
    * $$\dot{Q}_S$$ = Shunt blood flow
    * $$\dot{Q}_T$$ = Cardiac output
    * $$C_cO_2$$ = Pulmonary end-capillary oxygen content, assumed to have an oxygen tension equal to PAO<sub>2</sub> (with the corresponding oxygen saturation)
    * $$C_aO_2$$ = Arterial oxygen content
    * $$C_vO_2$$ = Mixed venous oxygen content


##Physiological Consequences of Shunt
###Effect on Carbon Dioxide
* No CO<sub>2</sub> can diffuse from shunted blood
* Therefore PaCO<sub>2</sub> might be expected to rise, however:
  * In a spontaneously breathing patient the increased PaCO<sub>2</sub> increases respiratory drive, and alveolar ventilation increases
    * Therefore, **shunt does not tend to increase PaCO<sub>2</sub>** unless:
      *  The shunt fraction is large and 
      *  The patient is unable to increase their alveolar ventilation to compensate
  * Additionally, the steepness of the CO<sub>2</sub> dissociation curve at the arterial point means that although CO<sub>2</sub> *content* increases, the increase in PaCO<sub>2</sub> is small


###Effect on Oxygen
* **PaO<sub>2</sub> falls proportionally to shunt fraction**
* As shunted alveoli are ventilated but not perfused, **true shunt** is said to be **unresponsive to an increase in FiO<sub>2</sub>**  
This is where technical definitions become important to avoid confusion.
  * For an alveoli with a V/Q between 0-1 (V/Q mismatch or V/Q scatter, but not true shunt):
    * There is ventilation, but *relatively less* perfusion
    * Therefore blood passing through this alveoli will be *partially* oxygenated
    * Increasing PAO<sub>2</sub> will improve oxygenation (assuming no diffusion limitation):
      * Administration of supplemental oxygen
      * Hyperventilation  
      * As per the alveolar gas equation
  * For an alveoli with a V/Q of 0 (true shunt)
    * There is no perfusion. Regardless of the increase in PAO<sub>2</sub>, PaO<sub>2</sub> will not improve.

####The Isoshunt Diagram{#iso}
* Isoshunt diagram plots the relationship between FiO<sub>2</sub> and PaO<sub>2</sub> against a set of 'virtual shunt lines'
* These 'shunt fractions' are calculated from the above equation and so are actually V/Q admixture fractions

<img src="resources\isoshunt.svg">


---
##References
1. Lumb A. Nunn's Applied Respiratory Physiology. 7th Edition. Elsevier. 2010.
2. West J. Respiratory Physiology: The Essentials. 9th Edition. Lippincott Williams and Wilkins. 2011.
3. Chambers D, Huang C, Matthews G. Basic Physiology for Anaesthetists. Cambridge University Press. 2015.
