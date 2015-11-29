with(argument0){    //instance of wall
    removalPos = argument1; //removeal coords
    if(counterUp > -1){ //if looping
        image_index = counterUp; //next image
        counterUp--;
        operating = true;
    }else if(counterUp == -1 and !operating and !up and !buttonPressed){ //start loop
        counterUp = 4;
    }else if(!buttonPressed){ //continuing states otherwise
        image_speed = 0;
        operating = false;
        up = true;
    }
}
