/// @description 
audio_play_sound(snd_choque,1,false);
instance_destroy();
with(other){
	
	health_enemy -= 10;
	if (health_enemy <=0){
		
		instance_destroy();
		health_enemy = 100;
	}

}
