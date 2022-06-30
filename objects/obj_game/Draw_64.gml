/// @description dibujar score and lives


#region/// dibujar segun el room
switch(room){
	case rm_game:
	case rm_game0:
	case rm_game00:
	case rm_game1:
	
		
		draw_set_font(fnt_text);
		//var p = c_purple;
		//var w = c_white;
		var c = c_yellow;
		var b = c_black;
		var g = c_green;
		var r = c_red;
		var l = c_lime;
		draw_set_color(b)
		draw_set_halign(fa_center);
		draw_text(60,40,"POTION:" + string(global.potion));
		draw_text(60,20,"LIVES:" + string(lives));
		draw_text(579,20,"TIME:" + string(global.time));
		draw_text(579,40,"SCORE:" + string(score));
		draw_text(329,20,"HIGHSCORE:" + string(global.highscore));
		
		
		draw_set_color(draw_get_color());
		draw_set_color(l)
		draw_set_halign(fa_center);
		draw_text(61,40,"POTION:" + string(global.potion));
		draw_text(61,20,"LIVES:" + string(lives));
		draw_text(580,20,"TIME:" + string(global.time));
		draw_text(580,40,"SCORE:" + string(score));
		draw_text(330,20,"HIGHSCORE:" + string(global.highscore));
		draw_set_color(draw_get_color());
		break;

	

	
	case rm_start:
		draw_set_font(fnt_text);
		draw_set_halign(fa_center);
		var c = c_yellow;
		var b = c_black;
		var g = c_green;
		var r = c_red;
		draw_text_transformed_color(
			(room_width-649)/2,50, "HAIT-HAT",
			5,5,0,c,c,g,g,1		
		);
		draw_text_transformed_color(
			(room_width-650)/2,50, "HAIT-HAT",
			5,5,0,b,b,g,g,1		
		);

		draw_set_halign(fa_left);
		break;
	
	case rm_win:
		draw_set_font(fnt_text);
		draw_set_halign(fa_center);
		var c = c_lime;
		var r = c_red;
		draw_text_transformed_color(
			(room_width/2)-50,70, "YOU WIN",
			3,3,0,c,c,c,c,1		
		);
		draw_text_transformed_color(
			(room_width/2)-50,325,
			"Press DOWN to clear high score ",
			1,1,0,c,r,c,r,1	
		);
		draw_set_color(c);
		draw_text(x+310,y+10,string("Escribe tu  nombre:"));
		draw_text(x+460,y+10,string(keyboard_string));
		draw_text(x+310,y+40,string("score:  ") + string(score));
		draw_rectangle(x+150,y+50,x+500,y+350,c_navy);
		draw_highscore(x+250,y+100,x+440,y+300);
		draw_set_halign(fa_left);	
		break;
	
	case rm_gameover:
		draw_set_font(fnt_text);
		draw_set_halign(fa_center);
		var r = c_red;
		draw_text_transformed_color(
			room_width/2,70, "GAME OVER",
			3,3,0,r,r,r,r,1		
		);
		draw_text_transformed_color(
			room_width/2,300,
			"Press DOWN to clear high score ",
			1,1,0,r,r,r,r,1	
		);		

		draw_set_color(r);
		draw_text(x+400,y+10,string("Escribe tu  nombre:"));
		draw_text(x+550,y+10,string(keyboard_string));
		draw_text(x+400,y+40,string("score:  ") + string(score));
		draw_rectangle(x+200,y+50,x+550,y+350,c_navy);
		draw_highscore(x+250,y+100,x+500,y+300);
		draw_set_halign(fa_left);	
		break;
		
}
#endregion
