scriptGetInputs();
detectWallsInRoom();

if(keyLeft) {
    hspeed = 0;
    vspeed = -3;
}
if(keyRight) {
    hspeed = 0;
    vspeed = 3;
}

if(!keyLeft and !keyRight) { vspeed = 0; } //If neither key is pressed then stop.

//If the player is on the bottom of the ladder then go to standing state.
if(place_meeting(x, y + vspeed, oBoundary)) {
    move_contact_all(270,  abs(vspeed)) //Dont pass through ground please.
    vspeed = 0;
    state = state.stand;
}

//If no longer meeting box and still running then keep going and exit ladder state.
if(!place_meeting(x - 1, y, oTallMoveBox) and (keyLeft xor keyRight)) {
    state = state.run;
}

if(place_meeting(x, y + 1, oBoundary) and keyRight) {
    state = state.run;
}

if(keyMoveObject && place_meeting(x+hspeed+sprite_width/10+1, y, oMoveBox) && place_meeting(x, y + 1, oBoundary)) {
    state = state.moveObject;
}
