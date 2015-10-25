scriptGetInputs();

if(sprite_index != sPlayerFall){    //if player sprite is not falling
    sprite_index = sPlayerJump;
}

if(image_index == 11.7 || sprite_index == sPlayerFall){ //if reached last frame of jump or already falling
    sprite_index = sPlayerFall; //set sprite to looping fall animation
}
if (gravity == 0 && vspeed == 0)  && !keyJump{  //if on the floor
    state = state.stand
}
if(place_meeting(x,y + 1, oWall) && keyJump){
    vspeed = -jumpSpeed; //sets the vertical speed to jumpSpeed upwards
    image_index = 0;
}else if(place_meeting(x,y + 1, oWall)){
    state = state.run;  //sets the state to run if the player is on the ground
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
