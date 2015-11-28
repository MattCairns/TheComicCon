removalPos = -1;
yValue = 425;
if(y > room_height/2){ //get floor level for the room
    yValue = 835;
}
if(x < room_width/2){
    collision_line_r(x, yValue, room_width/2, yValue, oWall, false, false);
    if(global.result[0] == 0){
        collision_line_r(0, yValue, x, yValue, oWall, false, false);
    }
    removalPos[0] = 0;
    removalPos[1] = room_width/2;
}else{
    collision_line_r(x, yValue, room_width, yValue, oWall, false, false);
    if(global.result[0] == 0){
        collision_line_r(room_width/2, yValue, x, yValue, oWall, false, false);
    }
    removalPos[0] = room_width/2;
    removalPos[1] = room_width;
}

size = global.result[0];
if(size != 0){
    for(i = 1; i <= size; i++){ 
        moveBlockDown(global.result[i], removalPos);
    }
}
