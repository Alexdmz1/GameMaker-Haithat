/// @description Scores and lives
//draw_texture_flush();

//sprite_prefetch();
global.health_rovot =100;
global.numSpawnX=0;
global.numSpawnY=0;
global.potion =0;
lives = 3;
global.time = 300;
score = 0;
name = get_string_async("Please enter your name","");

// high score rm_game rm_game1
if file_exists("score.ini")
{
	ini_open("score.ini");
	global.highscore = ini_read_real("score","highscore",0);
	ini_close();
}
else
{
	global.highscore = 0;

}




alarm[2]=1; // activarse desde el primer instante

//draw_set_font(fnt_text);

randomize();

enum factions{
	//neutral,
	ally,
	enemy
}

enum powerups{
	two_bullets,
	three_bullets,
	four_bullets,
	star_bullets,
	laser_bullets,
	invincible	
}
