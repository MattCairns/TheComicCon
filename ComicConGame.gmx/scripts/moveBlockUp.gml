with(argument0){
    removalPos = argument1;
    if(counterUp > -1){
        image_index = counterUp;
        counterUp--;
        operating = true;
    }else if(counterUp == -1 && !operating && !up){
        counterUp = 4;
    }else{
        image_speed = 0;
        operating = false;
        up = true;
    }
}
