if(y > 2000) {
   inst = instance_create(700, 450, oDeathState);
   with(inst) {
       depth = -1000
       image_alpha=min(image_alpha+.01,1)
   }
}
