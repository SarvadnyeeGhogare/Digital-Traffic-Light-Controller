# Digital-Traffic-Light-Controller

Overview:

This project involves the implementation of a traffic light controller for a two-way intersection using Verilog. The system prioritizes North-South traffic, ensuring smooth vehicle flow while allowing East-West vehicles to pass when necessary. The controller efficiently manages signal transitions based on predefined timing constraints.This project focuses where the condition is one street (North-South) is heavily trafficked, and the other (East-West) is less frequently used.The goal is to optimize traffic flow by giving priority to North-South traffic while still allowing East-West vehicles to pass when necessary.

Specifications:

North-South Traffic Priority: The North-South signal remains green for a minimum of 25 seconds and extends its duration until a vehicle is detected on the East-West street.
East-West Traffic Management: The East-West signal can stay green for a maximum of 25 seconds, ensuring a timely switch back to North-South traffic, regardless of vehicle presence.
Safe Signal Transition: A 4-second yellow light interval is enforced in both directions to facilitate smooth and safe transitions between red and green signals.
