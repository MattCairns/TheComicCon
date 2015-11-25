scriptGetInputs();
//TODO -- This was just hacked together, needs lot of work.


//move the blocks
var block = instance_place(x+hspeed, y, oMoveBox);

global.instanceId = instance_place(x+hspeed, y, oMoveBox);
global.pathBlocked = false;
with(block) {
    if(!place_meeting(x + 3, y, oBlockParent)){
        instanceId = global.instanceId;
        hspeed = sign(oPlayer.hspeed)*3;
        location[0] = "";
        location[1] = "";
        location[2] = "";
        for(i = 0; i < global.arrayLength; i++){
            tempArray = global.blocksArray[i];
            for(j = 1; j <= tempArray[0]; j++){
                if(tempArray[j] == instanceId){
                    location[0] = i;
                    location[1] = j;
                    location[2] = tempArray[0] + 1;
                }    
            }
        }
        for(i = location[1]; i < location[2]; i++){
            tempArray = global.blocksArray[location[0]];
            with(tempArray[i]){
                hspeed = sign(oPlayer.hspeed)*3;
                scriptCollisionAll();
            }
        }
    }else{
        global.pathBlocked = true;
    }
}
    
//Change speed of player to equal block speed


hspeed = sign(hspeed)*3
if(!keyMoveObject or global.pathBlocked) {
    with(block)
        for(i = 0; i < instance_number(oMoveBox); i++){
            with(instance_find(oMoveBox, i)){
                hspeed = 0;
            }
        }
    state = state.run;

}

scriptCollisionGrav();
