# pdjr-kicad-nmea2000-common

This project provides a circuit design and PCB layout for the generic
elements of an NMEA 2000 module based around the Teensy 4.0
microcontroller.

The PCB layout can be imported into other projects, relieving them of
the effort of implementing the fundamental elements required to
power, interface, configure and process most NMEA hardware devices.
A project designer using the PCB can focus on just those elements of
application design appropriate to their task in hand.

A parallel project
[pdjr-nmea2000-common-firmware]()
provides a C++ pattern and associated libraries that can be used as
a basis for implementing firmware which exploits this hardware.

## Features of the hardware design

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
   
## How to use this PCB design as the basis for a new project

The PCB design is simply imported into a new KiCad project and then
extended to provide the required application features.

1. Open Kicad(1) and create a new project.

2. Download MNEA2000-COMMON.kicad_pcb into the new project folder.

3. Open pcbnew(1), choose FILE->MERGE, select the file you just
   downloaded and save it as a the new project's PCB (if your KiCad
   project is called blob.prj then save the file as blob.kicad_pcb).
   
4. 
