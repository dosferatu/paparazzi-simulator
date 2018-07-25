/// @description  collision()

// Horizontal Collisions
repeat(abs(vx)) {
if(!place_meeting(x+sign(vx),y,p_solid)) {
    x += sign(vx);
}
else {
    vx = 0;
    }
   } 
// Vertical Collisions
repeat(abs(vy)) {
if(!place_meeting(x,y+sign(vy),p_solid)) {
    y += sign(vy);
}
else {
    vy = 0;
    }
    }
