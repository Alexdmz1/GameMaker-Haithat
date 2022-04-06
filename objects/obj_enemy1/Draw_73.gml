/// @description 
shader_set(Shader1);

draw_self();

shader_reset();
draw_healthbar(x,y-80,x+100,y-90,health_enemy,c_black,c_red,c_fuchsia,0,true,true);