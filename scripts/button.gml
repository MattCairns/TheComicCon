image_speed = 0;
if(position_meeting(mouse_x, mouse_y, self)) {
    image_index = 1;
} else {
    image_index = 0;
}

if(position_meeting(mouse_x, mouse_y, self) && mouse_check_button_released(mb_left)){
    if(global.hover){
        global.hover = false;
    }else{
        global.hover = true;
    }    
}

