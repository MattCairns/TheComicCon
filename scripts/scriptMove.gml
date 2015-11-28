hspeed = sign(oPlayer.hspeed)*3;
for(i = 0; i < global.arrayLength; i++){ //loop through block groups
    tempArray = global.blocksArray[i];  //GML doesn't do array[][] for some reason
    for(j = 1; j <= tempArray[0]; j++){ //loop through blocks in group
        if(tempArray[j] == global.instanceId){ //if this is the element we are moving
            location[0] = i; //store it's possition in the array
            location[1] = j;
            location[2] = tempArray[0] + 1;
        }    
    }
}

for(i = location[1]; i < location[2]; i++){ //loop through only elements after the current one
    tempArray = global.blocksArray[location[0]]; // store the elements to move
    with(tempArray[i]){
        hspeed = sign(oPlayer.hspeed)*3; //move the elements
        scriptCollisionAll(); //check for collisions
    }
}

