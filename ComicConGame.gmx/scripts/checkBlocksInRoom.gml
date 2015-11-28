for(i = 0; i < instance_number(oWall); i++){
    var instanceId = instance_find(oWall, i);
    with(instanceId){
        if(up){
            if(oPlayer.x < removalPos[0] or oPlayer.x > removalPos[1]){
                moveBlockDown(instanceId);
            }
        }
    }
}
