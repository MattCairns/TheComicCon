if(place_meeting(x, y, oPlayer)) {
    image_index = 1;
    global.instanceId = collision_line( x, y, x-300, y, oWall, false, true);
    with(global.instanceId){
        if(!buttonPressed){
            for(i = 0; i < 6; i++){
                moveBlockDown(global.instanceId);
            }
            buttonPressed = true;
        }
    }
}
