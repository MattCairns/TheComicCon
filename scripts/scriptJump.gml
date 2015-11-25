scriptGetInputs();
detectWallsInRoom();

sprite_index = sPlayerJump;
mask_index = sPlayerStanding;

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

//MOVE LEFT AND RIGHT IN THE AIR
move = keyRight + -keyLeft;  //determines direction and multiplies by move speed
if(move < 0){   //if movement is to the left
    image_xscale = -1;  //look left
    if(hspeed > -8){
        hspeed -= horizontalAcceleration;   //accelerate movement if not too fast
    }
}else if(move > 0){ //if movement is to the right
    image_xscale = 1;   //look right
    if(hspeed < 8){
        hspeed += horizontalAcceleration;   //accelerate movement if not too fast
    }
}else{
    if((hspeed <= 0.2 && hspeed > 0) || (hspeed >= -0.2 && hspeed < 0)){ //check if below math does not remove all speed
        hspeed = 0;
    }else if(hspeed < 0){ //if moving left
        hspeed += 0.4; //slow down rapidly
    }else if(hspeed > 0){   //if moving right
        hspeed -= 0.4; //slow down rapidly
    }
}

scriptCollisionGrav();
