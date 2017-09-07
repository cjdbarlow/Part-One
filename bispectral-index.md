#Bispectral Index

> Describe the principles behind the BIS 

Bispectral Index (BIS) is a proprietary signal-processed EMG and EEG monitor used to estimate depth of anaesthesia.

The BIS outputs four values:
* BIS  
Dimensionless index between 0 and 100 where:
    * 0 represents cortical electrical silence
    * 100 represents normal cortical activity
    * 40-60 is consistent with general anaesthesia
* Signal Quality Index (SQI)  
Dimensionless index between 0 and 100 which gives an indication of the accuracy of the BIS value.
* Electromyography  
Gives an indication of the influence of muscle activity on BIS values.
* Suppression Ratio (SR)  
Percentage of previous 63 seconds where EEG is isoelectric.

##Method
Proprietary, but involves:
* **Compressed Spectral Array**
 * The signal over a short period (e.g. 5-10 seconds) of EEG recordings are analysed together  
 Each period is known as an epoch.
 * A fourier transformation is performed  
 This breaks the EEG signal down into the sine waves used to produce it.  
 * A histogram of each frequency is plotted
 * As anaesthesia deepens, lower frequencies begin to dominate
 * The **spectral edge frequency** is the frequency greater than 95% of the frequencies in the compressed spectral array  
 It is an indicator of anaesthetic depth, but not of drug concentration.
* Multivariate logistic regression of EEG features that correlate with clinical levels of sedation
* Initial validation on a cohort of healthy volunteers, not undergoing surgery
* Use of four frontotemporal EEG monitors

##Pros
* Reduced anaesthetic awareness in high risk patient groups  
Trauma, GA caesarian section, cardiac surgery.
* Non-invasive
* Use appears to result in reduced anaesthetic use and more rapid emergence

##Cons
* Proprietary algorithim
* Expensive
* Concerns about validity with:
 * Use of muscle relaxants
 * Non-GABAergic agents (e.g. ketamine)

 ---
 
 ##References
  