for(i = 0; i < instance_number(oWall); i++){
    var instanceId = instance_find(oWall, i);
    with(instanceId){
        if(up){
            if(oPlayer.x < removalPos[0] or oPlayer.x > removalPos[1]){
                moveBlockDown(instanceId);
            }
            global.blockHeight = y - 128;
            global.whileEscape = true;
            while(collision_rectangle_r(x-31, y-63, x+31, y+63, oBlockParent, false, true) and global.whileEscape ){
                for(i = 1; i <= global.result[0]; i++){
                    with(global.result[i]){
                        if(y - (sprite_height/2) > global.blockHeight){
                            y -= 1;
                        }else{
                            global.whileEscape = false;
                        }
                    }
                }
            }
            
        }
        
    }
}
