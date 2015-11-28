scriptGetInputs();
detectWallsInRoom();

if(keyLeft) {
    vspeed = -3;
}
if(keyRight) {
    vspeed = 3;
}

//If no longer meeting box and still running then keep going and exit ladder state.
if(!place_meeting(x - 1, y, oTallMoveBox) and (keyLeft xor keyRight)) {
    state = state.run;
}

if(place_meeting(x, y - 1, oBoundary) and keyRight) {
    state = state.run;
}

//scriptCollisionGrav();
