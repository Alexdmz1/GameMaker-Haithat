/// @description 

//draw_self();

shader_set(Shader4);

draw_self();

shader_reset();

draw_set_font(fnt_texbox);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(x,y,texto);

