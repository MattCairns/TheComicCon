if(place_meeting(x + hspeed, y, oBlockParent)){
    global.blockInWay = false;
    contactId = instance_place(x + hspeed, y, oWall);
    
    if(contactId != -4){
        with(contactId){
            if(up){
                global.blockInWay = true;
            }
        }
        if(global.blockInWay){
            hspeed = 0;
        }
    }else{
        hspeed = 0;
    }
}
