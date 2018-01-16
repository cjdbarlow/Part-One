#Principles of Ultrasound
> Describe the physical principles of ultrasound and the Doppler Effect.

Ultrasound is an imaging technique where high-frequency sound waves (2-15MHz) are used to generate an image. An ultrasound wave is produced by a probe using the **piezoelectric effect**:
* Certain crystalline structures will vibrate at a particular frequency when a certain voltage is applied across them  
The conversion of electrical energy to kinetic energy is how the ultrasound probe creates an ultrasound wave.
* Similarly, they can generate a voltage when a vibration is induced in them  
This is how the probe interprets reflected waves.


##Basic principles
* **Spatial resolution**  
How close two separate objects can be to each other and still be distinguishable. It is divided into:
    * **Axial resolution**, how far apart two objects can be when one is above the other (in the direction of the beam)
    * **Lateral resolution**, how far apart two objects can be when side side-by-side
* Contrast resolution is how similar two objects can appear (in echogenic appearance) and still be distinguishable

* **Higher frequency** settings offer greater spatial resolution but decreased penentration
* **Lower frequency** settings offer reduced spatial resolution but increased penetration  
They are used for visualising deep structures.

##Affect of Tissues on Ultrasound
At tissue interfaces, the wave may be:
* **Absorbed**  
Sound is lost as heat, and increases with decreased water content of tissues.
* **Reflected**  
Sound bounces back from the tissue interface, and returns to the probe.
    * Reflection is dependent on the:
        * **Difference in sound conduction** between the two tissues
        * **Angle of incidence** (close to 90° improves reflection)
        * **Smoothness** of the tissue plane
    * The amplitude of sound returning to the probe determines echogenicity, or how white the object will be displayed
    * The time taken for the sound to return determines depth
        * The time taken for a wave to return is proportional to **twice** the distance of the object from the probe
        * Depth can be calculated using $$ d = vt $$, where:
            * $$d$$ is Depth
            * $$v$$ is the speed of sound in tissue, and is assumed to be 1540 ms<sup>-1</sup>
            * **t** is Time
* **Transmitted**  
Sound passes through the tissue, and may be reflected or absorbed at deeper tissues.
* **Scattered**  
Sound is reflected from tissue but is not received by the probe.


* **Attenuated**  
Attenuation describes the loss of sound wave with increasing depth, and is a function of the above fctors.
    * Attenuation is managed by increasing the **gain**  
    Gain refers to amplification of returned signal.
    * **Time-gain compensation** refers to amplification of signals which have taken longer to return, which amplifies signals returned from deep tissues

##Modes
Ultrasound modes include:
* **B-Mode** (brightness mode)  
The standard 2D ultrasound mode, and plots the measured amplitude of reflected ultrasound waves by the calculated depth from which they were reflected. 
* **M-Mode** (movement mode)  
Selects a single vertical section of the image and displays changes over time (i.e. depth on the y-axis, and time on the x-axis).


##Doppler Effect
The doppler effect is the change in observed frequency when a wave is reflected off (or emitted from) a moving object, relative to the position of the receiver. In medical ultrasound, this is the change in frequency of sound reflected from a moving tissue (e.g. an erythrocyte). It is given by the equation:

$$ V = { \Delta Fs \over 2F_0cos\theta} $$ where: 

$$ V $$ = Velocity of object  
$$ F $$ = Frequency shift  
$$ s $$ = Speed of sound (in blood)  
$$ F_0 $$ = Frequency of the emitted sound  
$$ \theta $$ = Angle between the sound wave and the object

Reflected frequencies are **higher towards the probe** and **lower away**.

Calculation of Cardiac Output:
* Heart rate is measured
* Stroke volume is calculated by:
    * Measuring the cross-sectional area of a vessel  
    Obtained by measuring the diameter using ultrasound.
    * Measuring the stroke distance  
    Obtained via integrating the flow-time waveform for distance across the left ventricular outflow tract (LVOT VTI)

---
##References
1. Cross ME, Plunkett EVE. Physics, Pharmacology, and Physiology for Anaesthetists: Key Concepts for the FRCA. 2nd Ed. Cambridge University Press. 2014.
2. CICM July/September 2007.