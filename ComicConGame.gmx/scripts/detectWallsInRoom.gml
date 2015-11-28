removalPos = -1;
yValue = 425;
if(y > room_height/2){ //get floor level for the room
    yValue = 835;
}
if(x < room_width/2){
    wallInstance = collision_line( x, yValue, room_width/2, yValue, oWall, false, false);
    if(wallInstance == -4){
        wallInstance = collision_line( 0, yValue, x, yValue, oWall, false, false);
    }
    removalPos[0] = 0;
    removalPos[1] = room_width/2;
}else{
    wallInstance = collision_line( x, yValue, room_width, yValue, oWall, false, false)
    if(wallInstance == -4){
        wallInstance = collision_line( room_width/2, yValue, x, yValue, oWall, false, false);
    }
    removalPos[0] = room_width/2;
    removalPos[1] = room_width;
}

if(wallInstance != -4){
    moveBlockUp(wallInstance, removalPos);
}
checkBlocksInRoom();
