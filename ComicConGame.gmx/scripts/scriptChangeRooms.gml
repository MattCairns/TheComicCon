keyEsc = keyboard_check_pressed(vk_escape); //1 if esc is pressed

if(keyEsc) {
    if(room_get_name(room) == "rLevelOne"){
        room = rMainMenu;
    }else{
        room = rLevelOne;
    }
}
