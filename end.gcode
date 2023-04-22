; Ender 3 Custom End G-code
G4 ; Wait for all previous commands to finish
M220 S100 ; Reset Speed factor override percentage to default (100%)
M221 S100 ; Reset Extrude factor override percentage to default (100%)
G91 ; Set coordinates to relative
G1 F1800 E-6 ; Retract filament 6 mm to prevent oozing
G1 F600 Z5 ; Move Z Axis up 5 mm to allow filament ooze freely
G90 ; Set coordinates to absolute
G1 X0 Y220 F7200 ; Move heated bed to the front for easy print removal
M106 S0 ;Turn-off fan
M104 S0 ;Turn-off hotend
M140 S0 ;Turn-off bed
M84 ; Disable stepper motors
