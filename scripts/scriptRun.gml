scriptGetInputs();

sprite_index = sPlayerRunning;
if(hspeed == 0){
    state = state.stand;
}

if(keyJump && place_meeting(x,y + 1, oWall)) {
    show_debug_message("jumP");
    state = state.jump;
    
}

//LEFT AND RIGHT
move = keyRight + keyLeft;  //determines direction and multiplies by move speed
show_debug_message(move)
if(move == -1){   //if movement is to the left
    image_xscale = -1;  //look left
    if(hspeed > -8){
        hspeed -= horizontalAcceleration;
    }
    show_debug_message("LEFT")
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
