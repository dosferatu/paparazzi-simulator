/// @description  Initialize Player

//Inherit Variables
event_inherited();


// Movement
vxMax = 1.5;
vyMax = 1.5;
accel = .25;
fric = 2;

// Squash and Stretch
xscale = 1;
yscale = 1;

// States
IDLE = 10;
RUN = 11;
ATTACK = 12;
DEFEND = 13;

// Initialize Properties
state = IDLE
attackRate = .05;
dir = 0;
facing = image_xscale;

