# Electrical Safety

> Understand the concepts of patient safety as it applies to monitoring involving electrical devices

##Electrical Principles
* **Charge** is the property of a subatomic particle which causes it to experience a force when close to other charged particules. Charge is measured in coulombs (C).
* **Resistance** describes to what extent a substance reduces the flow of electrons through it. Resistance is measured in ohms (Ω).
    * Substances with **high resistance** are **insulators**
    * Substances with **low resistance** are **conductors**

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

###Effect of Current


##Principles of Electical Safety
Power points contain three wires:
* Active  
240V
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

###Methods of Electrical Safety
* **Floating power supply**
Current is returned via the neutral line, rather than the ground. An individual touching the active power point will not receive an electric shock, as the circuit is not completed.

* **Residual Current Devices**  
A device measures the current difference between the active and neutral lines, and will disconnect power if there is a >0.1mA difference between them (which could occur if current is shorted through a device/person).
    * Pros: Safe
    * Cons: Will shut off power to the device, which is bad for ECMO/CPB/ventilators without battery backup.

* **Line Isolation Supply**, with a **line isolation monitor**  
A line isolated supply has a 'transformer' with an equal number of windings, such that the voltage is the same however the powerpoint is not physically connected to the supply. This creates an **earth-referenced floating supply**.
    * Pros: A single fault is not dangerous and will not result in a power loss which is important for vital equipment
    * Cons: Two or more faults are dangerous, and will still not result in a power loss
    * Faults are monitored with a **line isolation monitor**, which evaluates whether the supply is not earth-referenced, and how much current would flow if the an earth circuit was present, alarming if there is the potential for a >5mA current.

###Classification of Electrically Safe Areas

* **B areas**: Protection against macroshock
    * Residual Current Devices
    * Line Isolation Supply


* **BF areas**: Cardiac (microshock) protection
    * Equipotential Earthing  
    All devices, and the patient, are earthed to each other by thick copper (i.e. low-resistance), such that any potential difference between devices will be equalised via the path of least resistance (the wire, not the patient).


* **Z areas**: No particular protections

###Classification of Electrically Safe Equipment
* **Class I: Earthed**  
Device is earthed to ground.

* **Class II: Double-insulated**  
Two layers of insulation around device. Does not require earthing.

* **Class III: Low-voltage**  
Device less than 40V DC.

###Electrical Devices which Attach to Patients
Devices such as ECG and BIS require an electrical connection to the patient. Risk of electrocution by these devices is reduced by:
* High resistance wires


---
##References
Anaesthesia med usyd edu lecture electricity and electrical hazards
Ben Waldron Tute