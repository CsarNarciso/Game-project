//daño por disparo_wep01
if (pl_00.salud_em_008 > 0){
pl_00.salud_em_008 -= 50;
alerta8 = 1;
}
else {
	pl_00.salud_em_008 -= 0;
}
///animacion y sonido al recibir daño 
sprite_index = zombie1_bal00;
if sprite_index = zombie1_bal00 {
if (!audio_is_playing(em00dano)) {
		audio_play_sound(em00dano,10,false);
}
}


