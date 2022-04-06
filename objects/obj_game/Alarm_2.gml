/// @description  finalizar tiempo
//cada 30 pasos 1 segundo
// descontar un segundo
alarm[2]=60;
global.time -=1;


if(global.time<=0 ){
	
	lives-= 1;
	global.time=150;
	instance_destroy(obj_player);
	instance_create_layer(global.numSpawnX,global.numSpawnY,"Instances",obj_player);
}


