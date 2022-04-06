/// @description direccion
// definir direccion
/* _move = derecha - izquierda;

hsp = _move * walkspd;
*/

if direccion = 1{
	sprite_index = spr_enemigo;
	image_speed = 1; 
	image_xscale =1;
	image_xscale = 0.2;
	image_yscale = 0.2;
} 
else{
	sprite_index = spr_enemigo1;
	image_speed = 1; 
	image_xscale = 1;
	image_xscale = 0.2;
	image_yscale = 0.2;
}
  
// parametros collision
if not place_free(x+10,y){
	hspeed =izquierda;
	direccion = 0;
}
if not place_free(x-10,y){
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

#region// seguir al player
// if player exist

if(!instance_exists(obj_player)) exit;


// if player is inside range
if(point_distance(x,y,obj_player.x,obj_player.y) <205){
	// turn to look at player ship
	var new_dir= point_direction(x,y,obj_player.x,obj_player.y);
	new_dir = direccion;
	if new_dir = 1{
		sprite_index = spr_enemigo_atack;
		image_speed = 1; 
		image_xscale =1;
		image_xscale = 0.2;
		image_yscale = 0.2;
		hspeed = derecha;
	} 
	else{
		sprite_index = spr_enemigo_atack1;
		image_speed = 1; 
		image_xscale = 1;
		image_xscale = 0.2;
		image_yscale = 0.2;
		hspeed = izquierda;
	}
 

	//hspeed += 0.01;	
}else{
	// other wise no change
	hspeed = lerp(hspeed,hspeed,0.1);	
}

#endregion