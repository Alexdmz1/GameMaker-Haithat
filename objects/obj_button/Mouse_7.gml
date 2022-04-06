/// @description cambio de room o salir

if !press exit;

if texto == "Start"
{

	room_goto(rm_pre_game);
	//audio_play_sound(snd_game,1,true);
	audio_stop_sound(snd_win);
	//var target = rm_start;
	//if (room == rm_start) target = rm_game; 
	//transitionStart(target,sq_fadeout,sq_fadein);
	//TransitionFinished(); //causa error

}

if texto == "Quit"
{
	game_end();
	
}

if texto == "Restart"
{
	game_restart();
	audio_stop_sound(snd_game_over);

}

if texto == "Quit"
{
	game_end();
}

if texto == "Next"
{
	room_goto(rm_start);
}



if texto == "Tutorial"
{
	room_goto(rm_tutorial);
}

if texto == "Return"
{
	room_goto(rm_start);
	

}

