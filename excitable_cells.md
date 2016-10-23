# Excitable Cells
> Explain the basic electro-physiology of neural tissue, including conduction              of nerve impulses and synaptic function.

##Membrane Potential
At rest, membranes are:
* Permeable to potassium
* Impermeable to other ions

Intracellular potassium concentration is much higher than extracellular potassium concentration due to the action of the Na<sup>+</sup>-K<sup>+</sup> pump. As the membrane is permeable to potassium, potassium will attempt to diffuse down this gradient, generating a negative intracellular charge which opposes further diffusion. At some point, an electrochemical equilibrium is reached between the concentration gradient dragging potassium out of the cell, and the negative electrical charge holding it in.

This equilibrium is the resting membrane potential. It is determined by the membranes permebility to different ions, and the relative ionic concentrations on either side of the membrane. Impermeable ions do not contribute to the resting membrane potential. Therefore, altering membrane permeability causes a flow of ions and a change in voltage.

The electrical potential generated for a given concentration gradient for a **permeable** ion can be calculated via the **Nernst Equation**.

###Nernst Equation
The electrochemical equilibrium for an ion is calculated by the **Nernst equation**. This calculates the potential difference produced by a permeable ion in electrochemical equilibrium when there are different concentrations on either side of the cell. It is given by the equation:

$$ E \ (mV) = {R.T \over z.F}ln{[ion]_{outside} \over [ion]_{inside}} $$, where:
* $$E$$ is the equilibrium potential for the ion
* $$R$$ is the gas constant (8.314 J.deg<sup>-1</sup>.mol<sup>-1</sup>)
* $$T$$ is the temperature in Kelvin
* $$F$$ is Faraday's Constant
* $$z$$ is the ionic valency (e.g. +2 for Mg<sup>+2</sup>, -1 for Cl<sup>-</sup>)

###Goldman-Hodgkin-Katz Equation
The Nernst equation describes the equilibrium for a single ion, and assumes that the membrane is completely permeable to that ion. In reality, this is not the case - the membrane potential is determipned by several different ions with different permeability.

A better estimate of resting membrane potential is given by the Goldman-Hodgkin-Katz equation:

$$ E \ (mV) = {R.T \over F }ln{P_K[K^+]_o \ + \ P_{Na}[Na^+]_o \ + \ P_{Cl}[Cl^-]_i \over P_K[K^+]_i + \ P_{Na}[Na^+]_i \ + \ P_{Cl}[Cl^-]_o}$$, where:
* $$P_x$$ is the permeability constant for the ion, $$x$$. If the membrane is imperable to $$x$$, then $$P_x = 0 $$.

Note that:
* This model does not consider valency
* The concentrations of negative ions are reversed relative to positive ions

##Action Potential
Excitable cells can respond to a stimulus by a change in membrane potential. This may happen chemically (ACh receptors causing Na<sup>+</sup> channels to open), or physically (pressure receptors physically deforming and opening Na<sup>+</sup> channels).

Each stimulus will result in an increase in Na<sup>+</sup> permeability and increase (i.e. make less negative) membrane potential. If several stimuli, or a large enough stimuli raise the membrane potential above the **threshold potential**, then an action potential will be generated. This is due to **fast Na<sup>+</sup> channels**, which are known as **voltage-gated** channels as then open at a **membrane potential** of **-55mV**. This creates the **all-or-nothing** response - stimuli below the threshold potential do not generate an action potential, whilst stimuli above it do not affect the magnitude of it - the positive feedback of the fast sodium channels take over.

###Key Players in the Action Potential
Fast Na<sup>+</sup> channels are responsible for depolarisation. They exist in three states:
* Closed  
Impermeable to Na<sup>+</sup>.
* Open  
Permeable to Na<sup>+</sup>. Occurs when the membrane potential reaches -55mV.
* Inactivated  
Impermeble to Na<sup>+</sup>. Occurs shortly after the open state, and lasts until the membrane potential falls below -50mV.

Voltage-gated K<sup>+</sup> channels are vital for repolarisation. They **open slowly** with depolarisation, increasing potassium permeability and reducing membrane potential.

###Phases of the Action Potential
1. Rising Phase  
A stimulus which rises above the threshold potential opens fast Na<sup>+</sup> channels, increasing Na<sup>+</sup> influx. This additional Na<sup>+</sup> has a positive feedback effect, causing additional Na<sup>+</sup> channels to open and further depolarisation driving the membrane potential towards the Nernst equilibrium for Na<sup>+</sup>.
2. Peak Phase  
However, inactivation of fast-channels and delayed activation of K<sup>+</sup> channels slows depolarisation, and the membrane potential **peaks** at **30mV**.
3. Falling Phase  
As potassium exits the cell, membrane potential continues to fall. Voltage-gated K<sup>+</sup> channels start to close at **-50mV**.
4. Hyperpolarisation  
As these channels close slowly, the membrane potential slightly undershoots resting potential, and this causes a slight hyperpolarisation of the cell. This is the **relative refractory period**, where a large enough stimulus may overcome the relative hyperpolarisation and generate a second action potential. It lasts **10-15ms**.

The **absolute refractory period** occurs when Na<sup>+</sup> channels are in their inactive state. No Na<sup>+</sup> can be conducted, regardless of the intensity of the stimulus, and so an action potential cannot be generated. It lasts **~1ms**.

###Propagation of the Action Potential
An increase in Na<sup>+</sup> in one region of the axon will diffuse down the cell, raising the membrane potential above the resting potential in the adjacent membrane. This causes these fast Na<sup>+</sup> channels to open, resulting in a propagating wave of depolarisation and repolarisation.

Regions of a nerve cell covered by a myelin sheath do not have ion channels. In these cells, propagation is **saltatory**, as the action potential jumps between gaps in the myelin known as **nodes of Ranvier**. At these nodes, ion channels generate an action potential in the usual manner, whilst between nodes conduction is via local electrical currents. Myelination **increases conducting velocity**, **reduces energy expenditure** by reducing total ion flux.

---
##References
Power and Kam
Basic physiology for anaesthetists
