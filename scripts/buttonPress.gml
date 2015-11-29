if(place_meeting(x, y, oPlayer)) {
    image_index = 1;
    
    yValue = 425;
    if(y > room_height/2){ //get floor level for the room
        yValue = 835;
    }
    if(x < room_width/2){
        collision_line_r(x, yValue, room_width/2, yValue, oWall, false, false);
        if(global.result[0] == 0){
            collision_line_r(0, yValue, x, yValue, oWall, false, false);
        }
    }else{
        collision_line_r(x, yValue, room_width, yValue, oWall, false, false);
        if(global.result[0] == 0){
            collision_line_r(room_width/2, yValue, x, yValue, oWall, false, false);
        }
    }
    for(i = 1; i <= global.result[0]; i++){ 
        global.instanceId = global.result[i];
        with(global.instanceId){
            if(!buttonPressed){
                for(i = 0; i < 6; i++){
                    moveBlockDown(global.instanceId);
                }
                instance_destroy();
            }
        }
    }
}
