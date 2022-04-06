/// @description direccion

if direccion = 1{
	sprite_index = spr_rovo; image_speed = 0.3; image_xscale =1;
} 
else{
	sprite_index = spr_rovo; image_speed = 0.3; image_xscale = -1;
}
  
// parametros collision
if not place_free(x+6,y){
	hspeed =izquierda;
	direccion = 0;
}
if not place_free(x-6,y){
	hspeed =derecha;
	direccion = 1;
}
// gravedad
if place_free(x,y+1){
	gravity = 0;
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