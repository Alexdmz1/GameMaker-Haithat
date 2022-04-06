/// @description 
if !(invincible==false)
{
	invincible =true;
	with(other){instance_destroy();}
	score+=100;
	instance_create_layer(x,y,"Instances",obj_puntos1);

}else{
	global.health_rovot -=1;
	if global.health_rovot <=0{
		
		x= global.numSpawnX;
		y = global.numSpawnY;
		lives -=1;
		global.health_rovot = 100;
	}

}
effect_create_below(ef_smokeup,x,y,200,c_black);
//instance_destroy();
