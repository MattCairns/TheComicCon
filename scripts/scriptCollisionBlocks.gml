wallInstance = -4;
global.eachPathBlocked = false;
if(x < room_width/2){
    wallInstance = collision_line( x, y, room_width/2, y, oWall, false, false);
    if(wallInstance == -4){
        wallInstance = collision_line( 0, y, x, y, oWall, false, false);
    }
}else{
    wallInstance = collision_line( x, y, room_width, y, oWall, false, false)
    if(wallInstance == -4){
        wallInstance = collision_line( room_width/2, y, x, y, oWall, false, false);
    }
}
if(wallInstance != -4){
    with(wallInstance){
        if(!up){
            global.eachPathBlocked = false;
        }else{
            global.eachPathBlocked = true;
        }
    }
}

if(place_meeting(x + hspeed, y, oBlockParent) and global.eachPathBlocked){
    hspeed = 0;
}
