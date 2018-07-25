/// @description  Inputs
var kUp, kDown, kLeft, kRight, kSelect, kBack;

kUp = keyboard_check(vk_up);
kDown = keyboard_check(vk_down);
kLeft = keyboard_check(vk_left);
kRight = keyboard_check(vk_right);
kSelect = keyboard_check_pressed(ord("X"));
kBack = keyboard_check_pressed(ord("Z"));

// Movement
//Left
if(kLeft && !kRight)
{
    facing = -1;
    state = RUN;
    if (vx > 0) {
        vx = approach(vx,0,fric);
    }
    vx = approach(vx,-vxMax,accel);
    if(!kUp && !kDown) {
        if (vy != 0) {
            vy = approach(vy,0,fric);
        }
    }
    
    dir = 2;
}

//Right
if(kRight && !kLeft)
{
    facing = 1;
    state = RUN;
    if (vx < 0) {
        vx = approach(vx,0,fric);
    }
    vx = approach(vx,vxMax,accel);
    if(!kUp && !kDown) {
        if (vy != 0) {
            vy = approach(vy,0,fric);
        }
    }
    
    dir = 2;
}

//Up
if(kUp && !kDown)
{
    state = RUN;
    if (vy > 0) {
        vy = approach(vy,0,fric);
    }
    vy = approach(vy,-vyMax,accel);
    
    if(!kLeft && !kRight) {
        if (vx != 0) {
            vx = approach(vx,0,fric);
        }
    }
    if((vy*vx) == 0) {
        dir = 1;
        } else {
        dir = 2;
        }
}

//Down
if(kDown && !kUp)
{
    state = RUN;
    if (vy < 0) {
        vy = approach(vy,0,fric);
    }
    vy = approach(vy,vyMax,accel);
    
    if(!kLeft && !kRight) {
        if (vx != 0) {
            vx = approach(vx,0,fric);
        }
    }
    if((vy*vx) == 0) {
        dir = 0;
        } else {
        dir = 2;
        }
}

//Friction
if(!kLeft && !kRight && !kUp && !kDown)
{
    state = IDLE;
    vx = approach(vx,0,fric);
    vy = approach(vy,0,fric);
}

/// Squash and Stretch

xscale = approach(xscale, 1, .05);
yscale = approach(yscale, 1, .05);

// While character runs
if(state == RUN) {
    if(animation_hit_frame(0) || animation_hit_frame(2)) {
        yscale = 0.80;
        xscale = 1.20;
    }
    if(p_chance(.1)) {
        var _vx = vx;
        var mydepth = depth;
        with(instance_create(other.x,other.y+7,o_dust)){
            depth = mydepth;
            vx = _vx*0.25;
            vy = random_range(-0.75,0.25);
          }
    }   
}

