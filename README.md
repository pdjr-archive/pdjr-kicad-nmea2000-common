# pdjr-kicad-nmea2000-common

This project provides a circuit design and PCB layout for the generic
elements of an NMEA 2000 module based around the Teensy 4.0
microcontroller.

The PCB layout can be imported into other projects, relieving them of
the effort of implementing the generics and, allowing them to focus on
just those elements of application design appropriate to the task
in hand.

The generic design provides:

1. A 5VDC, 400mA, module power supply driven from the host NMEA bus.
   
2. A CAN interface between the host NMEA bus and the Teensy 4.0
   microcontroller.
   
3. A user configuration interface consisting of a 8-position DIL
   switch and SPST push button. As a minimum this allows the
   configuration of the module instance address required by many
   NMEA devices.
   
4. A user display interface consisting of up to 17 LEDs. Typically
   one LED will be used to report NMEA connection status and other
   LEDs will have some application specific role.
   
5. A Teensy 4.0 microcontroller with 13 GPIO pins available for
   application use.

The PCB design is simply imported into a new KiCad project and then
extended to provide the required application features.

## Using the PCB design as the basis for a new project

1. Create a new KiCad project.
2. Open pcbnew(1) and  
