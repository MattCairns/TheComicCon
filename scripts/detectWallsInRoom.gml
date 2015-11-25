removalPos = -1;
if(x < room_width/2){
    wallInstance = collision_line( x, y, room_width/2, y, oWall, false, false);
    if(wallInstance == -4){
        wallInstance = collision_line( 0, y, x, y, oWall, false, false);
    }
    removalPos[0] = 0;
    removalPos[1] = room_width/2;
}else{
    wallInstance = collision_line( x, y, room_width, y, oWall, false, false)
    if(wallInstance == -4){
        wallInstance = collision_line( room_width/2, y, x, y, oWall, false, false);
    }
    removalPos[0] = room_width/2;
    removalPos[1] = room_width;
}

if(wallInstance != -4){
    moveBlockUp(wallInstance, removalPos);
}
checkBlocksInRoom();
