//daño
if (salud > 0) {
	alarm [3] = 8
salud -= 10;
}
else {
	salud -= 0;
}
 


//animacion de muerte de personaje 
if salud < 0 {
	audio_play_sound(pl00_death,150,false)
instance_destroy(em_00_7);
image_speed = 0.5;
	sprite_index = personaje1_muerte;
}