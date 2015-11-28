///Inputs
keyRight = keyboard_check(ord("D")) || keyboard_check(ord("E"));    //the "E" here is so that I can use my keyboard layout to play
keyLeft = keyboard_check(ord("A"));                                //God damn dvorak
keyJump = keyboard_check(vk_space) || keyboard_check(ord("W"));
keyDown = keyboard_check(ord("S"));
keyMoveObject = keyboard_check(vk_shift);

jumpSpeed = 15;
horizontalAcceleration = 0.2;
didCollide = 0;   //arbitrary number as this made the animation look smooth

