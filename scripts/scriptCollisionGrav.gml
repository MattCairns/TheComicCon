//VERTICAL COLLISION
//if player is in air then pull them down with gravity.
if(!place_meeting(x, y + vspeed + 1, oBlockParent)){    //if y coord for next step is free
    gravity = 1;    //sets gravity to move the player
}else{
    //When player hits ground set velocities to 0 and move player to ground height.
    move_contact_all(270 , abs(vspeed))
    gravity = 0;   
    vspeed = 0; 
}

//HORIZONTAL COLLISION
//if player runs into a wall, stop them moving
if place_meeting(x + hspeed, y, oBlockParent) {
    if hspeed > 0 {
        if(!place_meeting(x, y + 1, oBoundary)){ //if in air
            hspeed = -1; //push outside object to fall
        }else{
            move_outside_all(-180, abs(hspeed)); //move outside object
        }
    }
    else if hspeed < 0 {
        if(!place_meeting(x, y + 1, oBoundary)){ //if in air
            hspeed = 1; //push outside object to fall
        }else{
            move_outside_all(0, abs(hspeed)); //move outside object
        }
    }
}

//Player will teleport to correct location in room when they go to the edge.
if(x >= room_width && y < room_height/2 && hspeed > 0) {
    x = ((x mod room_width) + room_width) mod room_width
    y = 900-(sprite_height/2)-40
}

if(x <= -sprite_width/2 && y >= room_height/2 && hspeed < 0) {
    x = room_width
    y = 900-(room_height/2)-(sprite_height/2)-10
}

