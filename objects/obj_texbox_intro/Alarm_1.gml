/// @description 
alarm[1] =tms;

if (esc)
{
	
	if(con <= maxi)
	{
		con += 1;
		post = 1;
		cop = "";
		fin = "";
		alarm[0]= tm;
		esc = false;
	}

	if (con > maxi)
	{
		room_goto(rm_game);
		instance_destroy();
	}
}
else
{
	fin = text[con];
	post = string_length(text[con]) + 1;
}
		

