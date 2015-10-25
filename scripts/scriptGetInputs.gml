///Inputs
keyRight = keyboard_check(ord("D")) || keyboard_check(ord("E"));    //the "E" here is so that I can use my keyboard layout to play
keyLeft = keyboard_check(ord("A"));                                //God damn dvorak
keyJump = keyboard_check(vk_space) || keyboard_check(ord("W"));
keyEsc = keyboard_check(vk_escape);

jumpSpeed = 15;
horizontalAcceleration = 0.2;   //arbitrary number as this made the animation look smooth

if(keyEsc) {
    room_goto_next();
}
