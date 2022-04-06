/// @description direccion
#region//no utilizado
/*
if direccion = 1{
	sprite_index = spr_rovo; image_speed = 0.3; image_xscale =1;
} 
else{
	sprite_index = spr_rovo; image_speed = 0.3; image_xscale = -1;
}
  
// parametros collision
if not place_free(x+4,y){
	hspeed =izquierda;
	direccion = 0;
}
if not place_free(x-4,y){
	hspeed =derecha;
	direccion = 1;
}
// gravedad
if place_free(x,y+1){
	gravity = 1;
}else{
	gravity = 0;
}



// definir direccion

if hspeed = derecha{
	direccion = 1;
}

if hspeed = izquierda{
	direccion = 0;
}
*/
#endregion

if (direction == 0){
	image_xscale=1;
	
	
}

if (direction == 180){	
	image_xscale=-1;
	
}

