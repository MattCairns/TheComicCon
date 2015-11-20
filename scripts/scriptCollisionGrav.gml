
//VERTICAL COLLISION
//if player is in air then pull them down with gravity.
if(!place_meeting(x, y + vspeed + 1, oBlockParent)){    //if y coord for next step is free
    gravity = 1;    //sets gravity to move the player
}else{
    //When player hits ground set velocities to 0
    move_contact_all(270 , abs(vspeed))//moves the character the remaining distance to the ground
    gravity = 0;    //stops gravity moving the player
    vspeed = 0; //stops player movement
}

//HORIZONTAL COLLISION
//if player runs into a wall, stop them moving
if place_meeting(x + hspeed + 1, y, oBlockParent) {
    //do x -= sign(hspeed) until not place_meeting(x + hspeed + 1, y, oBlockParent)
    //move_contact_all(270, abs(hspeed))
    move_contact_all(180, abs(hspeed))
    hspeed = 0
    
}

//Player will teleport to correct location in room when they go to the edge.
if(x >= room_width && y < room_height/2 && hspeed > 0) {
    x = ((x mod room_width) + room_width) mod room_width
    y = 900-(sprite_height/2)-30
}

if(x <= -sprite_width/2 && y >= room_height/2 && hspeed < 0) {
    x = room_width
    y = 900-(room_height/2)-(sprite_height/2)
}

