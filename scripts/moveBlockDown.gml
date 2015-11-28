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


collision_rectangle_r(x-31, y-70, x+31, y+63, oBlockParent, false, true);
for(i = 1; i <= global.result[0]; i++){
    with(global.result[i]){
        show_debug_message(y);
    }
}
