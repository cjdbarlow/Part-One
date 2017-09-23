#Wheatstone Bridge

The Wheatstone bridge is an electrical device used to accurately measure very small changes in electrical resistance. The Wheatstone bridge is:
* Used in many other medical devices (e.g. invasive pressure monitoring)
* A device with **infinite gain**
* A **null deflection galvanometer** 
* **Not an amplifier**  
As it does not increase current amplitude.

##Mechanism
<object data="resources\wheatstone.svg" type="image/svg+xml"></object>


The Wheatstone bridge consists of:
* Battery
* Four resistors
    * $$R_1$$ and $$R_3$$ are **known** and **fixed**
    * $$R_2$$ is **known** and **adjustable**
    * $$R_4$$ is **unknown**
* Galvanometer

The Wheatstone bridge relies on the ratio of resistances between the known ($$R_2 \over R_1$$) and unknown ($$R_4 \over R_3$$) legs:
* When $${R_2 \over R_1} = {R_4 \over R_3}$$) equal current flows down either limb and there is **no current flow** across the galvanometer  
At this point the bridge is said to be balanced.
    * The equation can then be re-arranged to solve for $$R_4$$:  
     $$R_4 = {R_2 \over R_1}.R_3$$
* Very small changes in $$R_4$$ lead to a current flow across the bridge
* $$R_2$$ can then be adjusted until the bridge is balanced, and the value of $$R_4$$ calculated

---

##References
1. Alfred Anaesthetic Department Primary Exam Tutorial Series
