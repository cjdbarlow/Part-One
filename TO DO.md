# How to build
quarto::quarto_render()
quarto::quarto_render(output_format = "pdf")
quarto::quarto_render(output_format = "html")
quarto::quarto_preview()

↑
μ
↓
α
β

# TO DO
## General
* SORT OUT ALL THE INTERNAL LINKS (all of format [xyz](cardiac_action_potential.md))
* Remove bullet points in tables and replace with extra line

## HTML
* Fix overlapping margin content
* Fix tables and images overflowing into margin
* Last updated on bottom of each page
  * Perhaps an R block which gets the last-modified of the file it is running from, that is called by a separate include/file run from * Use include-after-body
* Adjust image size to be pretty/dynamic
* Add LITFL header


## PDF
* Get images working (svgs broken)
* Change position of part text
* Section title to go next to page number
* Remove page numbers from bottom
  * Two-side and alternate side
* Change sidenote font to \tuftefont
* Fullwidth toc
  * ? Remove dots?


## Pages to be reviewed and transferred

* [Haematology](erythrocytes.md#id)
  * [Erythrocytes](erythrocytes.md)
  * [Iron Homeostasis](iron_homeostasis.md)
  * [Platelets](platelets.md)
  * [Transfusion](transfusion_reactions.md)
  * [Haemostasis](clotting.md)
  * [Haemostatic Regulation](unclotting.md)
  * [Coagulopathy Testing](coagulopathy_testing.md)
* [Equipment and Measurement](si_units.md#id)
  * [SI Units](si_units.md)
  * [Electrical Safety](electrical_safety.md)
  * [Wheatstone Bridge](wheatstone-bridge.md)
  * [Neuromuscular Monitoring](neuromuscular-monitoring.md)
  * [Pressure Transduction](pressure_transduction.md)
  * [Pressure Waveform Analysis](pulsecontour.md)
  * [Non-Invasive Blood Pressure](non-invasive-blood-pressure.md)
  * [Cardiac Output Measurement](cardiac-output.md)
  * [Pulse Oximetry](pulse_oximetry.md)
  * [Oxygen Analysis](gas-analysis.md)
  * [End-Tidal Gas Analysis](end-tidal_co2.md)
  * [Blood Gas Analysis](blood_gases.md)
  * [Gas Flow](gas-flow.md)
  * [Principles of Ultrasound](principles_of_ultrasound.md)
  * [Temperature and Humidity](temperature.md)
  * [Electrocardiography](electrocardiogram.md)
  * [Humidifiers](humidifiers.md)
  * [Supplemental Oxygen](supplemental-oxygen.md)
  * [Bispectral Index](bispectral-index.md)
  * [Medical Gas Supply](medical-gas-supply.md)
  * [Vapourisers](vaporisers.md)
  * [Breathing Systems](circuits.md)
  * [Bag-Valve-Mask](bvm.md)
  * [Circle System](circle-system.md)
  * [Scavenging](scavenging.md)
  * [Diathermy](diathermy.md)
  * [Lasers](lasers.md)
* [Procedural Anatomy](subclavian_vein.md#id)
  * [Subclavian Vein](subclavian_vein.md)
  * [Internal Jugular Vein](internal_jugular_vein.md)
  * [Intercostal Catheter](intercostal_catheter.md)
  * [Antecubital Fossa](antecubital_fossa.md)
  * [Tracheostomy](tracheostomy.md)
  * [Neuraxial](lp.md)

## Pharmacopoeia

* [Toxicology](ethanol.md#id)
  * [TCA Overdose](tricyclic_antidepressant_overdose.md)
  * [Organophosphates](organophosphate_poisoning.md)
  * [Recreational Drugs](ethanol.md#id)
    * [Toxic Alcohols](ethanol.md)
  * [Antidotes](naloxone.md#id)
    * [Naloxone](naloxone.md)
    * [Flumazenil](flumazenil.md)
* [Respiratory](oxygen.md#id)
  * [Oxygen](oxygen.md)
  * [Helium](helium.md)
  * [Bronchodilators](beta_agonists.md#id)
    * [Respiratory Pharmacology](anti-asthma_drugs.md#id)
    * [Anti-Asthma Drugs](anti-asthma_drugs.md)
    * [Beta Agonists](beta_agonists.md)
    * [Antimuscarinics](antimuscarinics.md)
    * [Phosphodiesterase Inhibitors](phosphodiesterase_inhibitors.md)
    * [Leukotriene Antagonists](leukotriene_antagonists.md)
  * [Corticosteroids](corticosteroids.md)
  * [Pulmonary Vasodilators](pulmonary_vasodilators.md)
* [Cardiovascular Pharmacology](adrenergic_drugs.md#id)
  * [Cardiovascular Pharmacology](inotropes.md#id)
    * [Inotropes](inotropes.md)
    * [Antiarrhythmics](antiarrhythmics.md)
  * [Adrenergic Vasoactives](adrenergic_drugs.md)
  * [Non-adrenergic Vasoactives](non-adrenergic_drugs.md)
  * [Antihypertensives](centrally_acting_anti-hypertensives.md#id)
    * [Centrally Acting Agents](centrally_acting_anti-hypertensives.md)
    * [Calcium Channel Blockers](calcium_channel_blockers.md)
    * [Direct Vasodilators](direct_vasodilators.md)
    * [ACE Inhibitors](ace_inhibitors.md)
    * [Angiotensin Receptor Blockers](angiotensin_receptor_blockers.md)
    * [Neprilysin Inhibitors](neprilysin_inhibiors.md)
    * [Potassium Channel Activators](potassium_channel_activators.md)
  * [Antiarrhythmics](sodium_channel_blockers.md#id)
    * [Sodium Channel Blockers](sodium_channel_blockers.md)
    * [Beta-Blockers](beta-blockers.md)
    * [Amiodarone](amiodarone.md)
    * [Sotalol](sotalol.md)
    * [Digoxin](digoxin.md)
    * [Adenosine](adenosine.md)
    * [Magnesium](magnesium.md)
    * [Atropine](atropine.md)
* [Renal](diuretics.md#id)
  * [Diuretics](diuretics.md)
  * [Intravenous Fluids](intravenous-fluids.md)
* [Neuropharmacology](propofol.md#id)
  * [Neuropharmacology](anticonvulsantsmoa.md#id)
    * [Neurotransmitters](neurotransmitters.md)
    * [Anticonvulsants](anticonvulsantsmoa.md)
    * [Local Anaesthetics](local-anaesthetics.md)
    * [Neuraxial Blockade](neuraxial-blockade.md)
    * [Opioids](opioidspharm.md)
    * [Inhalational Anaesthetics](inhalational-anaesthetic-agents.md)
  * [Propofol](propofol.md)
  * [Barbiturates](barbiturates.md)
  * [Ketamine](ketamine.md)
  * [Dexmedetomidine](dexmedetomidine.md)
  * [Local Anaesthetics](local_anaesthetics.md)
  * [Benzodiazepines](benzodiazepines.md)
  * [Antidepressants](antidepressants.md)
  * [Antipsychotics](antipsychotics.md)
  * [Anticonvulsants](anticonvulsants.md)
  * [GABA Analogues](gaba-analogues.md)
  * [Inhalational Anaesthetic Agents](inhalational-anaesthetics.md)
  * [Nitrous Oxide](nitrous-oxide.md)
* [Analgesics](opioids.md#id)
  * [Opioids](opioids.md)
  * [COX Inhibitors](cox_inhibitors.md)
  * [Tramadol](tramadol.md)
  * [Paracetamol](paracetamol.md)
* [Autonomic](antimuscarinicsansmd.md#id)
  * [Anticholinesterases](anticholinesterases.md)
  * [Antimuscarinics](antimuscarinicsansmd.md)
* [Neuromuscular](depolarising_nmbs.md#id)
  - content/msk/neuromuscular_blockers.qmd # Fix location!
  * [Depolarising NMBs](depolarising_nmbs.md)
  * [Non-Depolarising NMBs](non-depolarising_nmbs.md)
  * [Dantrolene](dantrolene.md)
  * [Sugammadex](sugammadex.md)
* [Haematological](anticoagulants.md#id)
  * [Anticoagulants](anticoagulants.md)
  * [Direct Thrombin Inhibitors](direct_thrombin_inhibitors.md)
  * [Antifibrinolytics](antifibrinolytics.md)
  * [Antiplatelets](antiplatelets.md)
* [Antimicrobials](penicillins.md#id)
  * [Antiseptics](antiseptics.md) # CURRENTLY IN MICRO FOLDER
  * [Penicillins](penicillins.md)
  * [Glycopeptides](glycopeptides.md)
  * [Aminoglycosides](aminoglycosides.md)
  * [Lincosamides](lincosamides.md)
  * [Metronidazole](metronidazole.md)
  * [Antifungals](antifungals.md)
* [Endocrine](insulins.md#id)
  * [Hypoglycaemics](insulins.md#id)
    * [Insulin](insulins.md)
    * [Oral Hypoglycaemics](oral_hypoglycaemics.md)
* [Obstetric](oxytocics.md#id)
  * [Oxytocics](oxytocics.md)
  * [Tocolytics](tocolytics.md)
* [Gastrointestinal](acid-suppression.md#id)
  * [Acid Suppression](acid-suppression.md)
  * [Antiemetics](antiemetics.md)
* [Other Drugs](iv-contrast.md#id)
  * [IV Contrast](iv-contrast.md)

REMOVE MODEL ANSWERS FROM CONTENT AT THIS POINT

## Appendices

* [Definitions](definitions.md)
* [Key Graphs](key_graphs.md)
* [Laws and Equations](laws.md)
* [Structures for SAQs](frameworks_for_classification.md)

