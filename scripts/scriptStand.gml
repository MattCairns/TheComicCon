scriptGetInputs();

sprite_index = sPlayerStanding;
if(keyLeft or keyRight){
    state = state.run;
}

if(keyJump && place_meeting(x,y + 1, oWall)) {
    state = state.jump;
}

scriptCollisionGrav();
