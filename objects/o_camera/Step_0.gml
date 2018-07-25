/// @description  Execute the state
script_execute(state);
__view_set( e__VW.XView, view_current, x - __view_get( e__VW.WView, view_current )/2 );
__view_set( e__VW.YView, view_current, y - __view_get( e__VW.HView, view_current )/1.75 );

// Remove shake

if(alarm[0] <= 0) {
    if (shake > 0) {
        shake -= 1;
    } else {
        shake = 0;
    }
}

