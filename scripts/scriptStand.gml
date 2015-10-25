scriptGetInputs();

sprite_index = sPlayerStanding;

if(keyLeft xor keyRight){   //non-inclusive because we do not want to run if both keys are pressed
    state = state.run;
}

if(keyJump && place_meeting(x,y + 1, oWall)) {
    state = state.jump;
}

scriptCollisionGrav();
