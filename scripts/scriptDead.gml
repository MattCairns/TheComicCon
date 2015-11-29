if(y > 2000) {
    inst = instance_create(700, 450, oDeathState);
    with(inst) {
        depth = -1000
        image_alpha=min(image_alpha+.01,1)
    }
    
    if(alarm[0] == -1) {
        alarm[0] = room_speed * 2;
    } 
    show_debug_message("What hte fuck")

}
