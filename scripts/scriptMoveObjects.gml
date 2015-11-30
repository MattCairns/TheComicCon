scriptGetInputs();
detectWallsInRoom();


global.instanceId = instance_place(x+hspeed, y, oBlockParent);  //gets the block that you are moving
global.pathBlocked = false; //used if the one you are moving is blocked

with(global.instanceId) {
    if (!place_meeting(x + 3, y, oBlockParent) and !place_meeting(x + 3, y, oBlockStop) and !place_meeting(x - 3, y, oBlockParent) and !place_meeting(x - 3, y, oBlockStop)){  //if there is nothing in the way
        scriptMove();
    }else{
        global.pathBlocked = true; //set the variable for later
    }
    
}
    
hspeed = sign(oPlayer.hspeed)*3;
if(!keyMoveObject or global.pathBlocked or (!keyLeft and !keyRight)) { //or if the path is blocked as above or player isnt holding any move keys.

        for(i = 0; i < instance_number(oBlockParent); i++){ //loop through all blocks
            with(instance_find(oBlockParent, i)){
                hspeed = 0; //stop them moving
            }
        }
    if(!keyLeft and !keyRight) {
        state = state.stand;
    } else {
        state = state.run;
    }
}



scriptCollisionGrav();
