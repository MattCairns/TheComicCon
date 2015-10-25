//if player is in air then pull them down with gravity.
if(place_free(x, (y + vspeed))){    //if y coord for next step is free
    gravity = 1;  
}else{
    //When player hits ground set velocities to 0
    move_contact_solid(270, 0); //moves the character the remaining distance to the ground
    gravity = 0;
    vspeed = 0; //stops player movement
}
