/// @description mostar pantalla segun el room
#region//no utilizado pasado
/*
if(keyboard_check(vk_enter)){
	switch(room){
		case rm_start:

			
			break;
		
		case rm_win:		
		case rm_gameover:
		
				game_restart();
				break;	
	}
}
*/
#endregion

#region// reiniciar highscore
if keyboard_check(vk_down){
	switch(room){
		
		case rm_win:		
		case rm_gameover:
			highscore_clear();
			ini_open("score.ini");
			global.highscore = ini_read_real("score","highscore",0);
			ini_key_delete("score","highscore");
			ini_close();			
			
			break;
	}
}
#endregion

#region//joystick
if((room== rm_game or room == rm_game0 or room == rm_game00 or room == rm_game1) && instance_number(obj_x) <=0){
	
	
	instance_create(x+380,y+320,obj_x);
	instance_create(x+510,y+320,obj_c);
	instance_create(x,y+320,obj_left);
	instance_create(x+123,y+323,obj_right);
	instance_create(x+63,y+380,obj_down);
	instance_create(x+64,y+259,obj_up);
	instance_create(x+280,y+350,obj_enter);
//96 546

}

#endregion

#region//rm_game, rm_game1, highscore, potion, cambio de room, quitar vida
if (room==rm_game or room==rm_game1 or room ==rm_game0 or room ==rm_game00){
	

	keyboard_string="";
	if (score > global.highscore)
	{
		global.highscore = score ;
		
		ini_open("score.ini");
		ini_write_real("score","highscore",global.highscore);
		ini_close();
		
	}
	else
	{
		global.highscore = global.highscore;
		
	
	}

	if(lives <= 0){
		instance_destroy(obj_player);
		//effect_create_below(ef_smokeup,x+200,y+200,300,c_black);
		//if(instance_number(obj_player<=0))alarm[3]= 2*room_speed;

		
		room_goto(rm_gameover);
		
		//highscore_add(name,score);

	}//else room_goto(rm_gameover);

		
	

}

#endregion

#region// rm_game1 highscore, potion, cambio de room a rm_win, time
if(room == rm_game1){
	
	if(instance_number(obj_exit) == 1){

		global.time = 300;
	}	

	
	if(instance_number(obj_potion) <= 0){
		
		room_goto(rm_win);
		//highscore_add(name,score);
		

		

	}
}

#endregion

if(room==rm_win or room==rm_gameover){
	
	if string_length(keyboard_string) > 15
	{
		keyboard_string = string_copy(keyboard_string, 1, 15);
	}
	
}




