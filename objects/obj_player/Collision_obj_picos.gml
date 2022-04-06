/// @description 


effect_create_below(ef_smokeup,x,y,200,c_black);
if !(invincible==false)
{
	invincible =true;
	with(other){instance_destroy();}
	score+=100;
	instance_create_layer(x,y,"Instances",obj_puntos1);

}else{
	
	x= global.numSpawnX;
	y = global.numSpawnY;
	lives -=1;
}


