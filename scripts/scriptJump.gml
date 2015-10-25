scriptGetInputs();

if(place_meeting(x,y + 1, oWall))
    vspeed = -jumpSpeed; //sets the vertical speed to jumpSpeed upwards


if (gravity == 0 && vspeed == 0) {
    state = state.stand
}

if(keyLeft or keyRight) && place_meeting(x,y + 1, oWall){
    state = state.run;
}

scriptCollisionGrav();
