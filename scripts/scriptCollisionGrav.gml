//if player is in air then pull them down with gravity.
if(place_free(x, (y + vspeed))){    //if y coord for next step is free
    gravity = 1;    //sets gravity to move the player
}else{
    //When player hits ground set velocities to 0
    move_contact_solid(270, 0); //moves the character the remaining distance to the ground
    gravity = 0;    //stops gravity moving the player
    vspeed = 0; //stops player movement
}

//if player runs into a block, stop them moving
if(!place_free((x + hspeed), y-10)){
    hspeed = 0;
}
