#Total Intravenous Anaesthesia and Target-Controlled Infusion
> <p style="color:purple";>Describe the pharmacological principles of and sources of error with target controlled infusion</p>

Total intravenous anaesthesia involves using IV agents alone to achieve hypnosis, analgesia, and muscle relaxation. TIVA:
* Advantages
    * Avoids adverse effects of anaesthetic agents
        * Nausea/vomiting
        * Pollution
        * Increased cerebral blood flow
* Disadvantages
    * Drug must be metabolised
    * Potential increased likelihood of awareness
        * Likely related to poor application of technique rather than the technique itself
            * Mostly related to disconnection of infusion without EEG monitoring
        * Variable plasma concentration


##Target Controlled Infusion{#tci}
TCI is the use of pharmacokinetic models (typically combined with microprocessor-controlled infusion pumps) to achieve a target concentration of drug in a particular body compartment.

TCI-systems:
* Are **open-loop**  
Effects of drug are not measured (unlike with end-tidal gas monitoring), which introduces a vulnerability that can lead to awareness.  
    * e.g. Compared to inhalational anaesthetics, where the loop is closed by using end-tidal drug monitoring
* Follows the BET (Bolus, Elimination, Transfer) principle:  
A loading dose is given to saturate the volume of distribution to achieve target concentration
    * $$Loading \ Dose = V_D \times C_P$$
    * Infusion rate is then set to maintain a target plasma concentration:  
    $$Maintenance \ Infusion \ Rate \ (MIR) = Cl \times C_P$$
    * Rate compensates for:
        * Drug elimination
        * Drug distribution (transfer)
    * Target $$C_P$$ can be adjusted:
        * For a higher concentration:
            * A small bolus is given
            * Infusion rate is increased
        * For a lower concentration:
            * Infusion is paused until desired level is reached
            * Infusion rate restarts at a lower rate

Models can **target** either:
* **Plasma concentration**, $$C_P$$  
Will not approximate $$C_E$$ until stead state is reached. Therefore:
    * Increase $$C_P$$ during induction, so that $$C_E$$ will rise more quickly
    * $$C_P$$ should be adjusted to the level of the surgical stimulus
        
<img src="\resources\plasma-site-targeting.svg">
        
* **Effect-site** concentration, $$C_E$$  
Over-pressure occurs automatically, so there is no requirement to increase target during induction.

<img src="\resources\effect-site-targeting.svg">


###TCI Models for Propofol
**The Bristol Model:**
* First pharmacokinetic model
* Based on three-compartment model of health patients
* Assumes:
    * Premedication with temazepam
    * Fentanyl 3μg.kg<sup>-1</sup> on induction
    * Inhaled N<sub>2</sub>O
    * A target plasma concentration ($$C_P$$) of 3μg.ml<sup>-1</sup>
* The model:
    * 1mg.kg<sup>-1</sup> induction bolus
    * 10-8-6 maintenance:
        * 10mg.kg<sup>-1</sup>.hr<sup>-1</sup> for 10 minutes
        * 8mg.kg<sup>-1</sup>.hr<sup>-1</sup> for 10 minutes
        * 6mg.kg<sup>-1</sup>.hr<sup>-1</sup> thereafter

**Marsh and Schnider Models:**
* These are computer controlled models
* Both were derived on very small groups of patients (18 and 24 respectively)
* The models differ mostly in the first 10 minutes after induction, and progressively converge  
The initial behaviour of the model is key in deciding which model to apply to any particular patient.

|Property|Marsh|Schnider|
|--|--|--|--|
|**Targets**|Typically target plasma concentration, but can target effect site. <br><br>Effect site targeting is usually done with the modified Marsh model, due to the large bolus dosing given by the standard Marsh model.|Typically effect site, but can target plasma concentration. <br><br>Plasma targeting gives inconsistent results, as the fixed size of V<sub>1</sub> means any increase in desired plasma concentration results in the same size bolus being given, irrespective of patient parameters.
|**Required variables**|TBW (overestimates induction (but not maintenance) in obese patients, consider using IBW), Age (but not used in calculation)|Age, height (to calculate lean body mass), TBW 
|**Values**|Variable compartment sizes but bigger V<sub>1</sub>|Fixed V<sub>1</sub> (4.27L) and V<sub>3</sub>, variable V<sub>2</sub> and K<sub>eo</sub>
|**Other**|The 'modified Marsh' model uses a k<sub>eo</sub> of 1.2L.min<sup>-1</sup> instead of 0.26L.min<sup>-1</sup>, which decreases the $$C_P \ $$ required to achieve the target $$C_e$$ quickly. The modified Marsh is therefore preferable in patients at higher risk of overdose.|Limits BMI to < 42 for males and < 35 for females, to prevent absurd compartment sizes being calculated from the method used to calculate lean body mass|
|**Overall**|Faster induction due to larger V<sub>1</sub>, which results in a larger loading dose|Reduced rate of adverse events. Overall less propofol used.
        

---

##References
1. Absalom AR, Mani V, De Smet T, Struys MM. [Pharmacokinetic models for propofol--defining and illuminating the devil in the detail](https://academic.oup.com/bja/article/103/1/26/462196/Pharmacokinetic-models-for-propofol-defining-and#6943950). Br J Anaesth. 2009 Jul;103(1):26-37.
2. Naidoo D. [Target Controlled Infusions](http://anaesthetics.ukzn.ac.za/Libraries/Documents2011/D_Naidoo_Target_Controlled_Infusion.sflb.ashx). Department of Anaesthetics, University of Kwazulu-Natal. 2011.
3. Engbers FH, Sutcliffe N, Kenny G, Schraag S. [Pharmacokinetic models for propofol: Defining and illuminating the devil in the detail](https://academic.oup.com/bja/article-pdf/104/2/261/614636/aep385.pdf). Br J Anaesth. 2010 Feb;104(2):261-2; author reply 262-4. 
2. FRCA - [Target Controlled Infusions in Anaesthetic Practice](http://www.frca.co.uk/article.aspx?articleid=101001)
