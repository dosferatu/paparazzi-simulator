/// @description  Handle Sprites
switch(state) {
    case IDLE:
        image_speed = .15;
        switch(dir) {
        case 0:
            sprite_index = s_chupacabra_F;
        break;
        
        case 1:
            sprite_index = s_chupacabra_B;
        break;
        
        case 2:
            sprite_index = s_chupacabra_S;
        break;
        }
        draw_sprite_ext(s_shadow, 1, x,y+2,1,1,0,c_white,0.5);
    break;
    
    case RUN:
        if(vx != 0) {
        image_speed = abs(vx)/10;
        } else {
        image_speed = abs(vy)/10;
        }
        switch(dir) {
        case 0:
            sprite_index = s_chupacabra_run_F;
        break;
        
        case 1:
            sprite_index = s_chupacabra_run_B;
        break;
        
        case 2:
            sprite_index = s_chupacabra_run_S;
        break;
        }
        draw_sprite_ext(s_shadow, image_index, x,y+2,1,1,0,c_white,0.5);
    break;
}

// Draw Player
draw_sprite_ext(sprite_index, image_index, x, y + (16 - 16 * yscale) * 0.25, facing * xscale, yscale, 0, c_white, image_alpha);

