///Inputs
switch (global.keyboardSetting) {
    case 1: 
        keyRight = keyboard_check(ord("D")) || keyboard_check(ord("E"));    //the "E" here is so that I can use my keyboard layout to play
        keyLeft = keyboard_check(ord("A"));                                
        keyJump = keyboard_check(vk_space) || keyboard_check(ord("W"));
        keyMoveObject = keyboard_check(vk_shift); 
        break;
    case 2: 
        keyRight = keyboard_check(ord("S"));
        keyLeft = keyboard_check(ord("A"));                                
        keyJump = keyboard_check(vk_space) || keyboard_check(ord("W"));
        keyMoveObject = keyboard_check(ord("E")); 
        break;
    case 3:
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



switch (keyboard_key)
{
    case ord("1"): global.keyboardSetting = 1; ; break;
    case ord("2"): global.keyboardSetting = 2; ; break;
    case ord("3"): global.keyboardSetting = 3; ; break;
    case ord("4"): global.keyboardSetting = 4; ; break;
    case ord("5"): global.keyboardSetting = 5; ; break;
}
 
 
jumpSpeed = 15;
horizontalAcceleration = 0.2;   //arbitrary number as this made the animation look smooth

