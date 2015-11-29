image_speed = 0;
if(position_meeting(mouse_x, mouse_y, self)) {
    image_index = 1;
} else {
    image_index = 0;
}

if(position_meeting(mouse_x, mouse_y, oButtonResume) && mouse_check_button_released(mb_left)){   //if a button is pressed
    room_goto(global.lastRoom);
    global.pause = 0;
}

if(position_meeting(mouse_x, mouse_y, oButtonRestart) && mouse_check_button_released(mb_left)){   //if a button is pressed
    game_restart(); //Needs work
}
