
var len = 400;

//Draw line
draw_line_width_color(x,y-25,
	x-1,
	y-30,
	10,image_blend,image_blend
);



// DRaw collision
/*
var inst = collision_line(x,y,
	x+lengthdir_x(len,obj_faction_enemy.x),
	y+lengthdir_y(len,obj_faction_enemy.y),
	obj_faction,false,false
);
*/
var inst = collision_line(x,y,
	x-len,
	y- len,
	obj_faction,false,false
);

if(inst != noone){
	if(inst.faction != faction){
		with(inst){
			if(!inmuneToLaser) event_perform(ev_other,ev_user1);
		}
		
	}
	
}
