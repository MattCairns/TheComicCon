scriptGetInputs();

sprite_index = sPlayerFall;


if(place_meeting(x, (y + vspeed) + 1, oBlockParent) && hspeed == 0){    //if about to hit ground and still
    state = state.stand;
}else if(place_meeting(x, (y + vspeed) + 1, oBlockParent)){ //if about to hit ground and moving
    state = state.run;
}

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

scriptCollisionGrav();
