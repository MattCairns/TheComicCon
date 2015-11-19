//CHECK FOR STAND STATE
if(hspeed == 0 && !(keyLeft xor keyRight)){ //stops stand animation if switching direction
    state = state.stand;
}

//CHECK FOR JUMP STATE
if(keyJump && place_meeting(x,y + 1, oWall)) {  //jump key pressed, player on the floor
    state = state.jump;  
}
if(keyJump && gravity == 0 && vspeed == 0) { //if jump key is pressed and player on ground
    state = state.jump;
}

//CHECK FOR RUN STATE
if(keyLeft xor keyRight){   //non-inclusive because we do not want to run if both keys are pressed
    state = state.run;
}

//CHECK FOR FALL STATE
if(place_free(x, y + 1)){   //if free space under character
    state = state.fall;
}
