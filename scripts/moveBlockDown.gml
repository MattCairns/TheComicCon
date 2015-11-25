with(argument0){
    if(counterDown > -1){
        image_index = 5 - counterDown;
        counterDown--;
        operating = true;
    }else if(counterDown == -1 && !operating){
        counterDown = 4;
    }else{
        image_speed = 0;
        operating = false;
        up = false;
    }
}
