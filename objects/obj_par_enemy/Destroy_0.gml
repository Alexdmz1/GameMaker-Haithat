//audio_play_sound(snd_explosion,1,false);
/*
repeat(10){
	instance_create_layer(x,y,"Instances",obj_debris); ///crear las brisas
	//effect_create_below(ef_cloud,x,y,100,c_aqua);
	
}*/
#region//score y efecto nube
switch(object_index){
	
	case obj_enemy1:  instance_create_layer(x,y,"Instances",obj_puntos); effect_create_below(ef_cloud,x,y,100,c_fuchsia); break;
	case obj_enemy2:  instance_create_layer(x,y,"Instances",obj_puntos); effect_create_below(ef_cloud,x,y,100,c_yellow); break;
	case obj_enemy3:  instance_create_layer(x,y,"Instances",obj_puntos); effect_create_below(ef_cloud,x,y,100,c_orange); break;
}
#endregion
#region//crear powerups random
if(irandom_range(0,1) == 0){
	instance_create_layer(x,y,"Instances",obj_powerup);
	
}
#endregion
	


