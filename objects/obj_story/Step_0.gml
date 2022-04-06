/// @description Transición de imágenes

if transitions == true {
    image_alpha -=.05;
    
    if image_alpha == 0 {
        transitions = false;
        image_index ++;
    }
}

if transitions == false && image_alpha < 1 {
    image_alpha += .1;
    
    if image_alpha == .9
        obj_textboxIntro.next_m= true;
}

if image_index == 10
    instance_change(obj_storypan, true);

