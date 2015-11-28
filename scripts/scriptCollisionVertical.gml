//VERTICAL COLLISION
//if player is in air then pull them down with gravity.

global.blockBelowIsUp = false; //set variable for use later
instanceBelow = instance_place(x, y + 50, oWall); //if wall is underneath
if(instanceBelow != -4){
    with(instanceBelow){
        if(up){ //if wall is up
           global.blockBelowIsUp = true; //do not move the block down
        }
    }
}

if(!place_meeting(x, y + vspeed + 1, oBoundary) and !global.blockBelowIsUp){    //if y coord for next step is free
    gravity = 1;    //sets gravity to move the player
}else{
    //When player hits ground set velocities to 0
    move_contact_all(270 , abs(vspeed))//moves the character the remaining distance to the ground
    gravity = 0;    //stops gravity moving the player
    vspeed = 0; //stops player movement
}
global.falling = false;
