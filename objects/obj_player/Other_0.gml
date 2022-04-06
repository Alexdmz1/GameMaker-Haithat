/// @description destruir y crear player

instance_destroy();
lives -= 1;
if room == rm_game or room == rm_game1 or room ==rm_game0 or room == rm_game00{
	
	instance_create_layer(global.numSpawnX,global.numSpawnY,"Instances",obj_player);

}
