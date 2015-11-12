///Moves block relative to the mouse

mouseOver = 0;

for(i = 0; i < instance_number(oMoveBox); i++){

    if(position_meeting(mouse_x, mouse_y, instance_find(oMoveBox, i))) {
        mouseOver = 1;
    }
    
    if(clickedInstance != -1 and mouse_check_button(mb_left)){
        mouseClicked = 1;
    }else if((mouse_check_button(mb_left) and position_meeting(mouse_x, mouse_y, instance_find(oMoveBox, i)))){
        mouseClicked = 1;
        clickedInstance = i;
    }else if(mouseClicked and mouse_check_button(mb_left)){
        mouseClicked = 1;
    }else{
        mouseClicked = 0;
        clickedInstance = -1;
    }
    
}
