///Inputs
switch (global.keyboardSetting) {
    case 1: 
        keyRight = keyboard_check(ord("D")) || keyboard_check(ord("E"));    //the "E" here is so that I can use my keyboard layout to play
        keyLeft = keyboard_check(ord("A"));                                
        keyJump = keyboard_check(vk_space) || keyboard_check(ord("W"));
        keyMoveObject = keyboard_check(vk_shift); 
        break;
    case 2:
        keyRight = keyboard_check(vk_right);
        keyLeft = keyboard_check(vk_left);                               
        keyJump = keyboard_check(vk_up);
        keyMoveObject = keyboard_check(vk_shift); 
        break;
    default: 
        keyRight = keyboard_check(ord("D")) || keyboard_check(ord("E"));    //the "E" here is so that I can use my keyboard layout to play
        keyLeft = keyboard_check(ord("A"));                                
        keyJump = keyboard_check(vk_space) || keyboard_check(ord("W"));
        keyMoveObject = keyboard_check(vk_shift); 
        break;
}
 
if(keyboard_check(ord("2"))) {
    global.keyboardSetting = 2;
}
if(keyboard_check(ord("1"))) {
    global.keyboardSetting = 1;
}

jumpSpeed = 15;
horizontalAcceleration = 0.2;   //arbitrary number as this made the animation look smooth

