scriptGetInputs();
//TODO -- This was just hacked together, needs lot of work.

//Get the instance of the object that is beside the player.
var block = instance_place(x+hspeed, y, oMoveBox);

//Anything in this with statement only refers to block object
with(block) {
    hspeed = sign(oPlayer.hspeed)*3;
}

//Change speed of player to equal block speed
hspeed = sign(hspeed)*3
if(!keyMoveObject) {
    with(block)
        hspeed = 0;
    state = state.run;

}

scriptCollisionGrav();
