scriptGetInputs();
detectWallsInRoom();

sprite_index = sPlayerJump;

if(image_index == 9.9){ //if reached last frame of jump or already falling
    state = state.fall;
}
if (gravity == 0 && vspeed == 0)  && !keyJump{  //if on the floor and jump is not pressed
    state = state.stand;
}
if(gravity == 0 && vspeed == 0 && keyJump){ //if on floor and want to jump again
    vspeed = -jumpSpeed; //sets the vertical speed to jumpSpeed upwards
    image_index = 0;    //sets the jumping animation frame to 0
}else if(gravity == 0 && vspeed == 0 && !keyJump && (hspeed != 0 || (keyRight xor keyLeft))){  //if on floor and moving
    state = state.run;
}

scriptMovement(0.4);

scriptCollisionGrav();
