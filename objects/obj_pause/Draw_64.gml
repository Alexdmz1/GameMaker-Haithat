/// @description dibujar

if (pausa)
{
	if (fondo == -1)
	{
		fondo = sprite_add("pausa.png",0,0,0,0,0);
	}
	
	draw_sprite_ext(fondo,0,0,0,0.46,0.75,0,c_white,0.5);
	draw_set_font(fnt_pausa);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_color(c_white);
	draw_text(((view_wport[0]-1)-600)/2,(view_hport[0]-1)/2,"Pausa");
	draw_set_color(c_yellow);
	draw_text(((view_wport[0])-600)/2,view_hport[0]/2,"Pausa");
	

}