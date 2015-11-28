scriptGetInputs();
detectWallsInRoom();

sprite_index = sPlayerRunning;
mask_index = sPlayerStanding;

if(hspeed == 0 && !(keyLeft xor keyRight)){ //stops stand animation if switching direction
    state = state.stand;
}

if(keyJump && place_meeting(x,y + 1, oBlockParent)) {  //jump key pressed, player on the floor
    state = state.jump;  
}

if(!place_meeting(x, y + 1, oBlockParent)){   //if space is free under character
    state = state.fall;
}


if(keyMoveObject && place_meeting(x+hspeed+sprite_width/10+1, y, oMoveBox)) {
    state = state.moveObject;
}

instanceLeft = instance_place(x - 50, y, oTallMoveBox);
if(instanceLeft != -4) {
    if(place_meeting(x + 3, y, oTallMoveBox)) {
        state = state.ladder;
    }
}

//If this does not come before movement then player gets stuck in things.
scriptCollisionGrav();

//LEFT AND RIGHT
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
        hspeed += 0.6; //slow down rapidly
    }else if(hspeed > 0){   //if moving right
        hspeed -= 0.6; //slow down rapidly
    }
}


