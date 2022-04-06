//audio_play_sound(snd_explosion,1,false);

#region// crear obj powerups al destruirse enemy
if(irandom_range(0,1) == 0){
	instance_create_layer(x,y,"Instances",obj_powerup);
}
#endregion



