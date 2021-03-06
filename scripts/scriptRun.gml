scriptGetInputs();
detectWallsInRoom();


if(hspeed == 0 && !(keyLeft xor keyRight)){ //stops stand animation if switching direction
    state = state.stand;
}

if(keyJump && place_meeting(x,y + 1, oBlockParent)) {  //jump key pressed, player on the floor
    state = state.jump;  
}

if(!place_meeting(x, y + 1, oBlockParent)){   //if space is free under character
    state = state.fall;
}


if(keyMoveObject && place_meeting(x+hspeed+sprite_width/10+1, y, oMoveBox) && place_meeting(x, y + 1, oBoundary)) {
    state = state.moveObject;
}

instanceLeft = instance_place(x - 50, y, oTallMoveBox);
if(instanceLeft != -4) {
    if(place_meeting(x - 1, y, oTallMoveBox)) {
        state = state.ladder;
    }
}

//If this does not come before movement then player gets stuck in things.
scriptCollisionGrav();

scriptMovement(0.6, horizontalAcceleration);

//Play the running sound.
if round(image_index) == 1 or round(image_index) == 4 {
    if(!audio_is_playing(soundFootstep)) {

        audio_play_sound(soundFootstep, 0, false);
    }
}
