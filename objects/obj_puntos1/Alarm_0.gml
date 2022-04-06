/// @description destruir
#region// crear brisas
instance_destroy();
repeat(40){
	instance_create_layer(x,y,"Instances",obj_debris); ///crear las brisas

}
#endregion