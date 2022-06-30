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

if texto == "Guardar y reiniciar"
{

	

	array_insert(global.arreglo[0],0,keyboard_string);
	array_insert(global.arreglo[1],0,string(global.highscore)); // probando score en forma de arreglo
	keyboard_string = "";
	highscore_add(global.arreglo[0][0],global.arreglo[1][0]);
	score=0;
	array_sort(global.arreglo[1], function(elm1, elm2) //mejorar el orden del arrglo
	{
	return elm2 - elm1;
	});	
	alarm[0] = 1*room_speed;
	




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

