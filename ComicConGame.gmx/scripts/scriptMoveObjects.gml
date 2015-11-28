scriptGetInputs();
detectWallsInRoom();
//Improved, though not perfect


global.instanceId = instance_place(x+hspeed, y, oBlockParent);  //gets the block that you are moving
global.pathBlocked = false; //used if the one you are moving is blocked
with(global.instanceId) {   
    
    if(!place_meeting(x + 3, y, oBlockParent) and !place_meeting(x - 3, y, oBlockParent) and !place_meeting(x + 3, y, oBlockStop) and !place_meeting(x - 3, y, oBlockStop)){  //if there is nothing in the way
        hspeed = sign(oPlayer.hspeed)*3;
        location[0] = "";   //declares this array for use later
        location[1] = "";
        location[2] = "";
        for(i = 0; i < global.arrayLength; i++){ //loop through block groups
            tempArray = global.blocksArray[i];  //GML doesn't do array[][] for some reason
            for(j = 1; j <= tempArray[0]; j++){ //loop through blocks in group
                if(tempArray[j] == global.instanceId){ //if this is the element we are moving
                    location[0] = i; //store it's possition in the array
                    location[1] = j;
                    location[2] = tempArray[0] + 1;
                }    
            }
        }
        
        for(i = location[1]; i < location[2]; i++){ //loop through only elements after the current one
            tempArray = global.blocksArray[location[0]]; // store the elements to move
            with(tempArray[i]){
                hspeed = sign(oPlayer.hspeed)*3; //move the elements
                scriptCollisionAll(); //check for collisions
            }
        }
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
