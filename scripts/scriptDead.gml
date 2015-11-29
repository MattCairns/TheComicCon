if(y > 2000) {
    inst = instance_create(700, 450, oDeathState);
    with(inst) {
        image_alpha = 0.3
        depth = -1000
    }
    
    if(alarm[0] == -1) {
        alarm[0] = room_speed * 2;
    } 
}
