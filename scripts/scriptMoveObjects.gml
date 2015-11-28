scriptGetInputs();
detectWallsInRoom();
//Improved, though not perfect


global.instanceId = instance_place(x+hspeed, y, oBlockParent);  //gets the block that you are moving
global.pathBlocked = false; //used if the one you are moving is blocked
with(global.instanceId) {   
    
    if(!place_meeting(x + 3, y, oBlockParent) and !place_meeting(x + 3, y, oBlockStop)){  //if there is nothing in the way
        scriptMoveObjectRight();
    } else if(!place_meeting(x - 3, y, oBlockParent) and !place_meeting(x - 3, y, oBlockStop)) {
        scriptMoveObjectLeft();
    }else{
        show_debug_message("true");
        global.pathBlocked = true; //set the variable for later
    }
    
}
    
//Change speed of player to equal block speed
hspeed = sign(hspeed)*3
if(!keyMoveObject or global.pathBlocked) { //or if the path is blocked as above
    with(global.instanceId)
        for(i = 0; i < instance_number(oBlockParent); i++){ //loop through all blocks
            with(instance_find(oBlockParent, i)){
                hspeed = 0; //stop them moving
            }
        }
    state = state.run;
}

scriptCollisionGrav();
