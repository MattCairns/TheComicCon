if(place_meeting(x + hspeed, y, oBlockParent)){
    global.blockInWay = false; //declare for later use
    contactId = instance_place(x + hspeed, y, oWall); //get object instance
    if(contactId != -4){    //if object is a wall
        with(contactId){
            if(up){ //if the wall is up
                global.blockInWay = true; //tell the below statement that the way is blocked
            }
        }
        if(global.blockInWay){ //if way is blocked
            hspeed = 0; //stop
        }
    }else{ //if the object is not a wall
        hspeed = 0; //stop
    }
}
