//daño por disparo_wep01
if (pl_00.salud_em_00 > 0){
	if hspeed > 0 {
	x = +30	
	}
	if hspeed < 0 {
	x = -30	
	}
	if vspeed > 0 {
	y = +30	
	}
	if vspeed < 0 {
	y = -30	
	}
	instance_create_depth(x,y,depth,sangre_piso_zombie);
pl_00.salud_em_00 -= 50;
if speed = 0 {
alerta = 1;	
}
}
else {
	pl_00.salud_em_00 -= 0;
	alerta = 0;	
}
///animacion y sonido al recibir daño
if speed > 0 {
	if (pl_00.salud_em_00 > 10){
sprite_index = zombie1_bal00;
	}
}
if (!audio_is_playing(em00dano)) {
		audio_play_sound(em00dano,10,false);
}