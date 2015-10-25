scriptGetInputs();

if(place_meeting(x,y + 1, oWall))
    vspeed = -jumpSpeed; //sets the vertical speed to jumpSpeed upwards
if (gravity == 0 && vspeed == 0) {  //if on the floor
    state = state.stand
}

if(keyLeft xor keyRight) && place_meeting(x,y + 1, oWall){   //if 1 is pressed, run
    state = state.run;
}

scriptCollisionGrav();
