#Total Intravenous Anaesthesia and Target-Controlled Infusion
> <p style="color:purple";>Describe the pharmacological principles of and sources of error with target controlled infusion</p>

Total intravenous anaesthesia involves using IV agents alone to achieve hypnosis, analgesia, and muscle relaxation. TIVA:
* Advantages
    * Avoids adverse effects of anaesthetic agents
        * Nausea/vomiting
        * Pollution
* Disadvantages
    * Drug must be metabolised
    * Potential increased liklihood of awareness
        * Likely related to poor application of technique rather than the technique itself
            * Mostly related to disconnection of infusion without EEG monitoring
        * Varible plasma concentration


##Target Controlled Infusion
TCI is the use of pharmacokinetic models (typically combined with microprocessor-controlled infusion pumps) to achieve a target concentration of drug in a particular body compartment.

TCI-systems are **open-loop**:
* Effects of drug are not measured  
This vulnerability can lead to awareness.  
    * e.g. compared to inhalational anaesthetics, where the loop is closed by using end-tidal drug monitoring

TCI follows the BET (Bolus, Elimination, Transfer) principle, where:
* A loading dose is given to saturate the volume of distribution to achieve target concentration  
$$Loading \ Dose = V_D \times C_P$$
* Infusion rate is then set to maintain a target plasma concentration:  
$$Maintenance \ Infusion \ Rate \ (MIR) = Cl \times C_P$$
    * Rate compensates for:
        * Drug elimination
        * Drug distribution (transfer)

Target $$C_P$$ can be adjusted:
* For a higher concentration:
    * A small bolus is given
    * Infusion rate is increased
* For a lower concentration:
    * Infusion is paused until desired level is reached
    * Infusion rate restarts at a lower rate

TCI can target either:
* Plasma concentration, $$C_P$$  
Will not approximate $$C_E$$ until stead state is reached. Therefore:
    * Increase $$C_P$$ during induction, so that $$C_E$$ will rise more quickly
    * $$C_P$$ should be adjusted to the level of the surgical stimulus
* Effect-site concentration, $$C_E$$  
Over-pressure occurs automatically, so there is no requirement to increase target during induction.


###TCI Models for Propofol
The Bristol Model:
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

|Property|Marsh|Schneider|
|--|--|--|--|
|**Targets**|
|**Unique Characteristics**|
|**Required variables**|TBW (overestimates induction (but not maintenance) in obese patients, consider using IBW), Age (but not used in calculation)|Age, height (to calculate lean body mass), TBW 
|**Values**|Variable compartment sizes but bigger V<sub>1</sub>|Fixed V<sub>1</sub> (4.27L) and V<sub>3</sub>, variable V<sub>2</sub> and K<sub>eo</sub>
|**Calculated values**|
|**Other**|The 'modified Marsh' model uses a k<sub>eo</sub> of 0.2L.min<sup>-1</sup> instead of 0.26L.min<sup>-1</sup>, which decreases the $$C_P$$ required to achieve the target $$C_e$$ quickly. The modified Marsh is therefore preferable in patients at higher risk of overdose.||
|**Overall**|Faster induction|Reduced rate of adverse events. Overall less propofol used.

The Marsh and Schneider models diverge most strongly in the 10 minutes after induction, and progressively converge.

        

---

##References
http://anaesthetics.ukzn.ac.za/Libraries/Documents2011/D_Naidoo_Target_Controlled_Infusion.sflb.ashx

http://www.frca.co.uk/article.aspx?articleid=101001