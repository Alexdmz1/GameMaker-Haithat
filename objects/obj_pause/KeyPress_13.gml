/// @description pausar

if (!pausa)
{
	screen_save("pausa.png");
	instance_deactivate_all(true);
	
	pausa  = true;
}
else{
	sprite_delete(fondo);
	fondo = -1;
	pausa = false;
	
	instance_activate_all();
}
