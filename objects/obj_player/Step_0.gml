/// @description movimientos player
#region//No Utilizado
/*
#region/// verificar si el player esta saltando o cayendo
if vspeed > 0
{
	fall = true;
	
}
else
{
	fall = false;
}

if vspeed < 0
{
	up = true;
}
else
{
	up = false;
}
#endregion
#region//Gravedad

if place_free(x, y+1)
{
	gravity = 1;
	
}
else
{
	gravity = 0;	
}

if vspeed >= 4{vspeed = 4;} // limitar gravedad y velocidad
#endregion


var der, izq, saltar, disparo,s;

der = keyboard_check(vk_right);
izq = keyboard_check(vk_left);
saltar = keyboard_check(ord("C"));
*/







/*
            // no salte exagerado en los bordes
if der && place_free(x+25,y){
	x +=v;
	sprite_index = spr_rovot_run;
	image_speed = 1;
	image_xscale = 1;
}

if izq && place_free(x-25,y){
	x-= v;
	sprite_index= spr_rovot_run;
	image_speed = 1;
	image_xscale = -1;


}
*/

/*
if saltar && !place_empty(x,y+10,obj_block) {	
	up = true;	
	sprite_index = spr_rovot_jump;
	vspeed -= salto;
	image_speed = 1;

}


if(fall==true && !place_empty(x,y-27,obj_block)){	
	sprite_index = spr_rovot_fall;
	image_speed = 1;
	image_xscale = 1;

}
if (der && fall==true){
	sprite_index = spr_rovot_fall;
	image_xscale = 1;
}
if (izq && fall==true){
	sprite_index = spr_rovot_fall;
	image_xscale = -1;
}

if(!nomoverse==true && fall==false && up == false){
	sprite_index = spr_rovot_disparo;
	image_speed = 1;
	image_xscale = 1;
}

*/
#endregion

#region//Players Inputs
/// Get players inputs
var _move;
disparo = keyboard_check_pressed(ord("X"));
//cambio = keyboard_check(ord("X"));
acelerar = keyboard_check(ord("X"));
key_left = keyboard_check(vk_left);
key_right= keyboard_check(vk_right);
key_jump = keyboard_check_pressed(ord("C"));
key_down = keyboard_check(vk_down);

#endregion

#region//Calculo de Movimientos
/// Calculate Movement

 _move = key_right - key_left;

hsp = _move * walksp;

vsp = vsp + grv;
 if place_meeting(x,y+1,obj_block) && (key_jump)
 {
	 vsp = -jumpsp;
 }
 #endregion

#region//Colision Horizontal.
/// Horizontal collision
if place_meeting(x+hsp,y,obj_block)
{
	while (!place_meeting(x+sign(hsp),y,obj_block))
	{
		x = x + sign(hsp);
	}
	
	hsp=0;
}
x = x + hsp;
#endregion

#region//Colision Vertical.
/// Vertical collision
if place_meeting(x,y+vsp,obj_block)
{
	while (!place_meeting(x,y+sign(vsp),obj_block))
	{
		y = y + sign(vsp);
	}
	
	vsp=0;
}
y = y + vsp;
#endregion

#region//Animacion  salto, caer, izquierda, derecha,  abajo, y disparo.

	
if (!place_meeting(x,y+1,obj_block))
{

	if (vsp > 0) sprite_index = spr_rovot_fall; else sprite_index=spr_rovot_jump;
}
else
{
	image_speed = 1;
	if (hsp==0)
	{
		sprite_index =spr_rovot_stand;	
	}
	else
	{
		sprite_index = spr_rovot_run;
	}
}

if (hsp != 0) image_xscale= sign(hsp);

if key_down
{
	sprite_index =spr_rovot_abajo;
	image_index =0;
	image_speed =0;
}
// animacion disparo
if (distance_to_object(obj_bullet)<30 && hsp==0){ sprite_index =spr_disparo;  }
if (distance_to_object(obj_bullet)<30 && vsp<0){ sprite_index =spr_disparo;  }
#endregion

#region//Disparos 

if disparo {

	create_bullet(0,image_xscale*walksp,faction,guns);
	//var inst =instance_create_layer(x,y,"Instances",obj_bullet);
	//inst.speed *= image_xscale*walksp;
	
}

if key_down{
	if disparo{
		
		if (distance_to_object(obj_bullet)<30 && hsp==0){ sprite_index =spr_disparo;  }

		
	}

}
//mejorar!!
if key_down && (hsp>0 or hsp<0){
	if (distance_to_object(obj_block)>0){ sprite_index =spr_rovot_run; image_index = 0; image_speed =1; }
	/*sprite_index = spr_rovot_run;
	image_index = 0;
	image_speed =1;*/
}


#endregion

#region//disparo prueba2
/*
switch(estado){
	case "normal": sprite_index = spr_rovot_stand ; image_index = 0; image_speed =0;
	break;
	
	case "fire" : sprite_index = spr_disparo ; image_index = 0; image_speed =0.4;
	break ;
}

if (disparo) && estado != "fire"{
	estado = "fire";
	image_index = 0;
}

if !(disparo) && estado = "fire"{
	estado = "normal";
	image_index = 0;
}
*/
#endregion

#region//Acelerar
if acelerar && walksp==4{
	walksp+=4;
}else{walksp=4;}
#endregion


#region // destruir o bj_player en rm_win y rm_gameover

if ( room ==rm_win or room ==rm_gameover){
	instance_destroy();
	
}
#endregion