# Pressure Transduction

A **transducer** converts one form of energy to another. Pressure transducers converts a pressure signal to an electrical signal, and require several components:
* Catheter
* Tubing
* Stopcock
* Flush
* Tranducer

This system must be calibrated in two ways:
* **Static calibration**  
Calibrates to a known zero.
* **Dynamic calibration**  
Accurate representation of changes in the system.

##Static Calibration
Static calibration involves:
* Leveling the transducer (typically to the level of the RA or EAM)  
A change in tranducer level will change the blood pressure due to the change in hydrostatic pressure (in cmH<sub>2</sub>O).
* **Zeroing** the transducer
  * Opening the tranducer to air
  * Zeroing the tranducer on the monitor  
  A change in measured pressure when the transducer is open to air is due to **drift**, an artifactual measurement error due to damage to the cable, tranducer, or monitor.
  
##Dynamic Calibration
Dynamic calibration ensures the operating characteristics of the system (or **dynamic response**) are accurate.

Dynamic response is a function of:
* **Damping**  
How rapidly an oscillating system will come to rest.
  * Damping is quantified by the **damping coefficient** or **damping ratio**
    * Describes to what extent the magnitude of an oscillation falls with each successive oscillation
    * Calculated from the ratio of the amplitudes of successive oscillations in a convoluted fashion:  
      $$ D = \sqrt{(\ln{D_2 \over D_1})^2 \over \pi^2 + (\ln{D_2 \over D_1})^2 }$$, where:  
        * $$D_x$$ are the magnitudes of successive oscillations  


* **Resonant Frequency**  
How rapidly a system will oscillate when disturbed and left alone. When damping is low, it will be close to the **natural frequency** (or undamped resonant frequency).


* Damping and natural frequency are used (rather than the physical characteristics) as they are both **easily measured** and **accurate** in describing the dynamic response
* These properties are actually determined by the systems elasticity, mass, and friction, but it is conceptually and mathematically easier to use damping and resonance

###Pressure Waveforms and Dynamic Response
* The dynamic response required is dependent on the nature of the pressure wave to be measured
* Accurately reproducing an arterial waveform requires a system with a greater dynamic response compared to a venous waveform


* An arterial pressure waveform is a periodic (repeating) complex wave, that can be represented mathematically by **Fourier analysis**
* Fourier analysis involves expressing a complex (arterial) wave as the sum of many simple sine waves of varying frequencies and amplitudes

PICTURE OF FOURIER ANALYSIS

* The frequency of the arterial wave (i.e., the pulse rate) is known as the **fundamental frequency**
* The sine waves used to reproduce it must have a frequency that is a *multiple* (or **harmonic**) of the fundamental frequency
  * Increasing the number of harmonics allows better reproduction of high-frequency components, such as rapid heart rates or a steep systolic upstroke
* Accurate reproduction of an **arterial** waveform requires up to **10 harmonics** - or **10 times the pulse rate**
* An arterial pressure transducer should therefore have a dynamic response of **30Hz**
  * This allows accurate reproduction of blood pressure in heart rates up to 180bpm (180 bpm = 3Hz, 3Hz x 10 = 30Hz)


###Resonance
* If high frequency components of the pressure waveform approach the natural frequency of the system, then the system will resonate
* This results in a distorted output signal and a small **overshoot in systolic pressure**.

###Damping
A pressure tranduction system should be adequately damped:
* An **optimally** damped waveform has a damping of **0.63**. It demonstrates:
  * A rapid return to baseline following a **step-change**, with **one overshoot and one undershoot**
* A **critically damped** waveform has a damping cofficient of **1**. It demonstrates:
  * The most rapid return to baseline possible following a step-change **without overshooting**
* An **overdamped** waveform has a damping coefficient of **>1**. It demonstrates:
  * A slow return to baseline following a step-change  with no oscillations
  * Slurred upstroke
  * Absent dicrotic notch
  * Loss of fine detail
* An **underdamped** waveform has a damping coefficient close to 0 (e.g. **0.03**). It demonstrates:
  * A very rapid return to baseline following a step-change  with several oscillations
  * Systolic pressure overshoot
  * Artifactual bumps

DAMPING GRAPH

###Testing Dynamic Response
Dynamic response can be tested by inducing a **step-change** in the system, which allows calculation of both the natural frequency and the damping coefficient. Clinically, this is performed by doing a **fast-flush test**.

* Fast flush valve is opened during diastolic runoff period (minimises systemic interference)
* Pressure artifact is examined
  * The **distance between** oscillations gives the natural frequency  
  This should be equal as it is the natural frequency of the measurement system.
  * The **ratio of amplitudes** of successive oscillations gives the damping coefficient

###Optimising Dynamic Response
The lower the natural frequency of a monitoring system, the smaller the range of damping coefficients which can accurately reproduce a measured pressure wave. Therefore, the optimal dynamic response is seen when the natural frequency is as **high as possible**. This is achieved when the tubing is:
* Short
* Wide
* Stiff
* Free of air  
Introducing an air bubble will increase damping (generally good, since most systems are under-damped), however it will lower the natural frequency and is detrimental overall.

---
##References
Brandis
Measurement book thing
Mark Langley lectures