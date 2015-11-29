scriptGetInputs();
detectWallsInRoom();

if(place_meeting(x, (y + vspeed) + 1, oBlockParent) && hspeed == 0){    //if about to hit ground and still
    state = state.stand;
}else if(place_meeting(x, (y + vspeed) + 1, oBlockParent)){ //if about to hit ground and moving
    state = state.run;
}

scriptMovement(0.6, 0.1);

scriptCollisionGrav();
