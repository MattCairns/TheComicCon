scriptGetInputs();
detectWallsInRoom();

sprite_index = sPlayerStanding;
mask_index = sPlayerStanding;

if(keyLeft xor keyRight){   //non-inclusive because we do not want to run if both keys are pressed
    state = state.run;
}

if(keyJump && gravity == 0 && vspeed == 0) { //if jump key is pressed and player on ground
    state = state.jump;
}

if(!place_meeting(x, y + 1, oBlockParent)){   //if free space under character
    state = state.fall;
}

if(place_meeting(x - 1, y, oTallMoveBox)) {
    state = state.ladder;
}

scriptCollisionGrav();
