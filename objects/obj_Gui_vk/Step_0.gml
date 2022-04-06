/// crear las variables si aun no se an cereado

if(!vk_keys_set)
{
	for(var i=0; i < array_length_1d(vk_keys); i++){
		virtual_key_add(x,y,sprite_width,sprite_height,vk_keys[i]);
	}
	vk_keys_set = true;
	
}

