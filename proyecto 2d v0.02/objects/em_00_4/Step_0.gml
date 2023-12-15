/// @description inteligencia artificial del enemigo
//muerte
if pl_00.salud_em_004 < 1 {
	instance_destroy(em_00_4);
}
//movimiento e inteligencia de enemigo
if (pl_00.salud_em_004 > 0) {
if (hspeed < 0) {
sprite_index = zombie_00;
}
if (hspeed > 0) {
sprite_index = zombie_00;
}
}

//rango de vision //distancia
if distance_to_object(pl_00) < 150 {
if point_direction(x,y, pl_00.x,pl_00.y) > 10 and point_direction(x,y, pl_00.x, pl_00.y) < 600
{
		if (!audio_is_playing(em00_alerta)) {
		audio_play_sound(em00_alerta,20,false);
		}
	mp_potential_step_object(pl_00.x-32,pl_00.y-32,velocidad_em00,false);
	move_towards_point(pl_00.x-32, pl_00.y-32, 1)
}
}

//alerta al recibir daño
if alerta4 = 1 {
	if (!audio_is_playing(em00_alerta)) {
		audio_play_sound(em00_alerta,20,false);
	}
	mp_potential_step_object(pl_00.x-32,pl_00.y-32,velocidad_em00,false);
	move_towards_point(pl_00.x-32, pl_00.y-32, 1)
}

//distancia para animacion de ataque y sonido de distancia

if distance_to_object(pl_00) < 51 {
	if (!audio_is_playing(em00_agarrar)) {
		audio_play_sound(em00_agarrar,20,false);
	}
//sprite_index = zombie1_abajo_atacando;
}
if distance_to_object(pl_00) < 300 {
	if (!audio_is_playing(em00_distancia)) {
		audio_play_sound(em00_distancia,3,false);
}
}