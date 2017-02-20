# Electrical Safety

> Understand the concepts of patient safety as it applies to monitoring involving electrical devices

##Electrical Principles
* **Charge** is the property of a subatomic particle which causes it to experience a force when close to other charged particules. Charge is measured in coulombs (C).

* **Current** is the flow of electrons through a conductor. Current is measured in amps (A).

* **Voltage** is the strength of the force that causes movement of electrons  
By tradition, voltages are quoted relative to **ground** (or **earth**). If a potential difference exists, a current will flow from that object to the earth via the path of least resistance. If this path contains a person, an electrical injury may result.


* **Resistance** describes to what extent a substance reduces the flow of electrons through it. Resistance is measured in ohms (Ω).
    * Substances with **high resistance** are **insulators**
    * Substances with **low resistance** are **conductors**

* **Inductance** is the generation of current when a conductor moves through a magnetic field.


* **Capacitance** is the ability of an object to store charge, and is measured in Fards (F). One farad is when one volt across the capacitor stores one coulomb of charge.
    * A capacitor is an electrical component consisting of two conductors separated by an insulator (called a dielectric)
    * When a **direct current** flows, electrons (a negative charge) build up on one of these conductors (called a plate), whilst an electron deficit (positive charge) occurs on the other plate
        * Current will flow until the build up of charge is equal to the voltage of the power source
        * Current can be **rapidly discharged** when the circuit is changed
    * An **alternating current** can flow freely across a capacitor, and causes no buildup of charge
    
* **Impedance** describes to what extent the flow of **alternating current** is reduced when passing through a substance. Impedance can be thought of as 'resistance for AC circuits', and is the total of **resistance **and **reactance**.
    * Reactance is formed by two things:
        * Induction of voltage in conductors by the alternating magnetic field of AC flow
        * Capacitance induced by voltages between these conductors


##Electrical Injury
Potential electrical injuries can be divided into:
* **Ventricular Fibrillation**  
Likelihood is a function of:
    * Current density
    * Frequency  
    Lowest current density required is at 50Hz

* **Burns**  
Function of current density. Burns typically occur at the entry and exit point as this is where current density is highest.

* **Tetanic Contraction**  
Flexors are stronger than extensors, which may maintain grip on live wire. Death may result from either VF or asphyxiation from sustained respiratory muslce contraction.

Electrical shocks are divided into two types, based on their ability to induce VF:

###Microshock
A **microshock** is the current required to induce VF when applied directly to myocardium (**0.05-0.1mA**). This requires **skin breach**. Potential causes:
* Guidewire
* Pacing lead
* Column of conducting fluid
    * CVC
    * PICC

###Macroshock
A **macroshock** is current required to induce VF from surface contact (**100mA**).
* This is much higher because most of this current is not going to the ventricle, and so the total current must be greater to achieve sufficient **current density** in the myocardium to induce VF

Other detrimental effects will be seen at lower currents:

|Current (mA)|Effect|
|--|--|
|1|Tingling|
|5|Pain|
|8|Burns|
|15|Skeletal muscle tetany|
|50|Skeletal muscle paralysis & respiratory arrest|

###Effect of Current Frequency
Excitable cells are most sensitive to AC current at 50Hz, which is the frequency of mains supply. AC current is more likely to induce VF than DC current.

INSERT GRAPH
 
##Principles of Electical Safety
Power points contain three wires:
* Active  
240V. Measuring voltage for AC current is not intuitive, as the voltage will be negative half the time. The **root mean square** (RMS) is used instead - each value for the voltage is squared (giving a positive number), and then divided by the number of samples to give an average.
* Neutral  
0V, relative to ground
* Earth  
Direct pathway into ground

An electrical circuit is completed between an appliance and the powerstation by returning current to the station via the earth. This is an **earth referenced power supply**.

###Electrical Dangers
* Active wire shorts to equipment casing
    * Principle of earth wire, which provides path of least resistance for current to travel if an individual touches the case
* High current drain through a wire generates heat and starts a fire  
    * Principle of fuses which trigger when current drain is >15A

##Methods of Electrical Safety
* **Insulation**  
Conductors are coated by a high-resistance substance, preventing current flowing where it shouldn't.


* **Fuses**  
Safety devices which cease all current flow when current exceeds a certain threshold (typically 20A). If there is a fault which greatly lowers resistance (i.e. insulation breaks, causing a device to become live and drain via the earth wire), a high current will flow and the fuse will be triggered.
    * A fault requires:
        * A fault that causes a high current flow
        * The fuse to work correctly
    

* **Residual Current Devices**  
An RCD measures the current difference between the active and neutral lines. In an non-fault situation, these will be equal. In a fault situation, current will be being delivered by the active line but not returned via the neutral (instead flowing to ground via faulty equipment/through the patient). The RCD will detect if there is a >10mA difference between the active and neutral lines, and disconnect power within 10ms if it does so.
    * A fault requires:
        * Current to flow
        * A single fault will turn off the circuit        
    * Pros: Safe
    * Cons: Will shut off power to the device, which is bad for ECMO/CPB/ventilators without battery backup.


* **Line Isolation Supply**, with a **line isolation monitor**  
    * A line isolated supply is a 'transformer' with an equal number of windings, such that the voltage produced is the same on each side. However, the **powerpoint is not physically connected to the supply**. This creates an **earth-referenced floating supply**. 
    * A fault requires:
        * **Two** faults  
        This makes a failure with potential for shock much less likely.
            * Active wire must be connected to ground
            * Neutral wire must be connected to ground  
            * A circuit then exists: active wire - ground - neutral wire, and a current could flow
    * A line isolated supply is paired with a line isolation monitor  
    This monitor states how much current *could* flow, *if* a second fault completed the circuit.
        * This is called a **prospective hazard current**
        * The line isolation monitor continuously checks the hazard current by evaluating the impedance between 

    * Pros: A single fault is not dangerous and will not result in a power loss which is important for vital equipment
    * Cons: Two or more faults are dangerous, and will still not result in a power loss
    * Faults are monitored with a **line isolation monitor**, which evaluates whether the supply is not earth-referenced, and how much current would flow if the an earth circuit was present, alarming if there is the potential for a >5mA current.

###Classification of Electrically Safe Equipment
These classifications are designed to limit macroshock:
* **Class I: Earthed**  
Any part that can contact the user is earthed to ground.
    * If a fault develops such that parts of the device that the user can touch are live, then there is a risk of shock. If the case is earthed, the path of least resistance should be via the earth wire. This will cause a large current to flow, and should blow a fuse, ceasing current flow.

* **Class II: Double-insulated**  
All parts of the device that the user can touch have wwo layers of insulation around them. This reduces the chance of the device becoming liv.

* **Class III: Low-voltage**  
Device less than 40V DC/24V AC. This limits the severity of shock a device can deliver.


###Classification of Electrically Safe Areas
* **B areas**: Protection against macroshock
    * Residual Current Devices
    * Line Isolation Supply


* **BF areas**: Cardiac (microshock) protection
    * Equipotential Earthing  
    All devices, and the patient, are earthed to each other by thick copper (i.e. low-resistance), such that any potential difference between devices will be equalised via the path of least resistance (the wire, not the patient).


* **Z areas**: No particular protections

###Electrical Devices which Attach to Patients
Devices such as ECG and BIS require an electrical connection to the patient. Risk of electrocution by these devices is reduced by:
* High resistance wires


---
##References
Anaesthesia med usyd edu lecture electricity and electrical hazards
Ben Waldron Tute
Aston