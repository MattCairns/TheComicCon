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
    global.roomRestart = true;
    room_goto(global.lastRoom);
    global.pause = 0;
}

if(position_meeting(mouse_x, mouse_y, oButtonStart) && mouse_check_button_released(mb_left)){   //if a button is pressed
    room_goto(global.currentRoom);
    global.pause = 0;
}

if(position_meeting(mouse_x, mouse_y, oButtonMainMenu) && mouse_check_button_released(mb_left)){   //if a button is pressed
    room_goto(rMainMenu);
    global.pause = 0;
}

if(position_meeting(mouse_x, mouse_y, oButtonQuit) && mouse_check_button_released(mb_left)){   //if a button is pressed
    game_end();
}
