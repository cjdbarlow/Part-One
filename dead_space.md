# Dead Space

Dead space is the proportion of minute ventilation which does not participate in gas exchange.

##Types of Dead Space
Dead space can be divided into:
* **Apparatus dead space**  
Dead space from equipment, such as tubes ventilator circuitry. Some apparatus dead space may actually *reduce* total dead space, as an ETT bypasses the majority of anatomical dead space of the patient (nasopharynx).


* **Physiological dead space**  
  Dead space from the patient. Physiological dead space is divided into:
  * **Anatomical dead space**  
  The volume of the conducting zone of the lung. Anatomical dead space is affected by:
    * Size and Age  
    3.3ml.kg<sup>-1</sup> in the infant, falls to 2.2ml.kg<sup>-1</sup> in the adult
    * Posture  
      Decreases when supine.
    * Position of the neck and jaw  
      Increased with neck extension.
    * Lung volumes  
      Increases by ~20ml per litre of additional lung volume.
    * Airway calibre  
    Bronchodilation increases airway diameter and therefore V<sub>D</sub>.
    <br>
  * **Pathological/Alveolar Dead Space**    
  Dead space caused by disease. Causes of pathological dead space include:
    * Erect posture
    * Decreased pulmonary artery pressure/impaired pulmonary blood flow  
      * Hypovolaemia
      * RV failure/Increased RV afterload:
        * HPV
        * MI
      * PE
    * Increased alveolar pressure  
    Increases West Zone 1 physiology.
     * PEEP
    * COAD


##Calculation of Dead Space
Two methods exist to allow dead space volumes to be calculated:
* Physiological dead space may be measured with **Bohr's method**
* Anatomical dead space may be measured by **Fowlers method**
* Pathological dead space may be calculated by substracting physiological dead space (Bohr's Method) from anatomical (Fowler's method)

###Fowler's Method
Fowler's Method is a **single-breath nitrogen washout test**, used to calculate **anatomical dead space** and **closing capacity**.

<object data="resources\fowlers-method.svg" type="image/svg+xml"></object>

Method:
* At the end of a normal tidal breath (at FRC) a **vital-capacity breath of 100% oxygen** is taken
* The patient then exhales to RV  
Expired nitrogen concentration and volume is measured.
* A plot of expired nitrogen concentration by volume is generated, producing a graph with four phases:
  * Phase 1 (Pure Dead Space)  
  Gas from the anatomical dead space is expired. This contains 100% oxygen - no nitrogen is present.
  * Phase 2  
  A mix of anatomical dead space and alveolar (lung units with short time constants) is expired. The midpoint of phase 2 (when area A = area B) is the volume of the **anatomical dead space**.
  * Phase 3  
  Expired nitrogen reaches a plateau as just alveolar gas is exhaled (lung units with variable time constants).
  * Phase 4  
  Sudden increase in nitrogen concentration, which indicates **closing capacity**. This increase occurs because:
    * Basal alveoli are more compliant than apical alveoli
    * Therefore, during inspiration basal alveoli inflate more than apical alveoli  
    The single 100% oxygen breath therefore preferentially inflates the basal alveoli. At the end of the vital capacity breath, the oxygen concentration in basal alveoli is greater than that of apical alveoli.
    * In expiration, the process is reversed:
        * Basal alveoli preferentially exhale
        * At closing capacity, small basal airways close and now only apical alveoli (with a higher concentration of nitrogen) can exhale
        * Measured expired nitrogen concentration increases

###Bohr's Method
Physiological dead space is measured using the Bohr equation. This calculates dead space as a ratio, or proportion of tidal volume:

$$ {V_D \over V_T} = {V_T - V_A \over V_T}$$

The Bohr equation is based on the principle that **all CO<sub>2</sub> exhaled must come from ventilated alveoli**.

$${V_D \over V_T} = {PA_{CO_2} - P{\bar{E}_{CO_2}} \over PA_{CO_2}}$$

Note that:
* $$P{\bar{E}_{CO_2}}$$ is the mixed-expired carbon dioxide  
Partial pressure of CO<sub>2</sub> in an expired tidal breath.
* The Bohr equation requires alveolar PCO<sub>2</sub> to be measured  
As this is impractical, the **Enghoff modification** is typically used, which assumes that PACO<sub>2</sub> ≈ PaCO<sub>2</sub>. The equation then becomes:  
$${V_D \over V_T} = {Pa_{CO_2} - P{\bar{E}_{CO_2}} \over Pa_{CO_2}}$$
* A **normal** value for physiological dead space during normal tidal breathing is **0.2-0.35**

##Physiological Consequences of Increased Dead Space
In dead space:
* The V/Q ratio approaches infinity as alveolar ventilation falls
* This results in a rise in PaCO<sub>2</sub>
* In a spontaneously-ventilating individual, this stimulates the respiratory centre to increase minute ventilation to return alveolar ventilation (and therefore CO<sub>2</sub>) to normal
* There is minimal effect on PaO<sub>2</sub>, as in pure dead space all blood is passing through ventilated alveoli and therefore undergoes gas exchange

###Relationship between Alveolar Ventilation and PaCO<sub>2</sub>
Atmospheric air contains negligible CO<sub>2</sub>. As MV increases, PaCO<sub>2</sub> will fall, as will the gradient for further CO<sub>2</sub> diffusion. This can be expressed by the equation:  
$$PaCO_2 \propto {1 \over \dot{V}_A}$$

<object data="resources\VA-vs-paco2.svg" type="image/svg+xml"></object>

Note that this graph:
* Describes the change in PaCO<sub>2</sub> for a change in alveolar ventilation  
A doubling of alveolar ventilation will halve PaCO<sub>2</sub>.
* Does not describe the change in ventilatory drive for a given change in PaCO<sub>2</sub>  
This is covered under [removal of CO<sub>2</sub>](carbon_dioxide_transport.md#transport).

---
##Footnotes
Note that West Zone 1 (where PA > Pa > Pv) physiology is increased dead space.

The PaCO<sub>2</sub>-ETCO<sub>2</sub> difference is a consequence of dead space, as dead space gas dilutes alveolar gas.

---
##References
Nunns
Wests