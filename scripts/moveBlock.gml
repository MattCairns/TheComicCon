targetPosition = instance_find(oMoveBox, clickedInstance).x;
haltMovement = 0;
dist = 0;

for(i = 0; i < instance_number(oMoveBox); i++){
    instanceX = instance_find(oMoveBox, i).x;
    
    if(gapRight == -4 and instanceX < mouse_x){
        gapRight = collision_line(instanceX, 768, (instanceX + 80 + (mouse_x - targetPosition)), 768, oWall, false, false);
    }else{
        if(collision_line(instanceX, 768, (instanceX + 80 + (mouse_x - targetPosition)), 768, oWall, false, false) == -4){
            gapRight = -4;
        }
    }
    if(gapLeft == -4 and instanceX > mouse_x){
        gapLeft = collision_line(instanceX, 768, (instanceX - 80 - (targetPosition - mouse_x)), 768, oWall, false, false);
    }else{
        if(collision_line(instanceX, 768, (instanceX - 80 - (targetPosition - mouse_x)), 768, oWall, false, false) == -4){
            gapLeft = -4;
        }
    }
    
    if(i == clickedInstance and (gapRight or gapLeft)){
        haltMovement = 1;
        if(gapRight){
            var tempDist = 0;
            var tempGap = gapRight;
            with(instance_find(oMoveBox, i)){
                tempDist = distance_to_point(tempGap.x - 32, y);
                show_debug_message(tempDist);
            }
            dist = tempDist;
        }else{
            var tempDist = 0;
            var tempGap = gapLeft;
            with(instance_find(oMoveBox, i)){
                tempDist = -distance_to_point(tempGap.x + 32, y);
            }
            dist = tempDist;
        }
    }
}

for(i = 0; i < instance_number(oMoveBox); i++){
    instanceX = instance_find(oMoveBox, i).x;
    rightCollision = collision_line(instanceX, 768, (instanceX + 80 + (mouse_x - targetPosition)), 768, oWall, false, false);
    leftCollision = collision_line(instanceX, 768, (instanceX - 80 - (targetPosition - mouse_x)), 768, oWall, false, false)
    
    if(!rightCollision and !leftCollision and !haltMovement){
        var change = instanceX + (mouse_x - targetPosition);
        with(instance_find(oMoveBox, i)){
            x = change;
        }
    }else if(dist != 0){
        var change = instanceX + dist;
        with(instance_find(oMoveBox, i)){
            x = change;
        }
    }

}
