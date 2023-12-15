// daño recibido por bala
//daño por disparo_wep00
if pl_00.salud_em_00 > 0 {
	alarm[0] = 1
	danoEm00_arma = 3;
	instance_create_depth(x,y,depth,sangre_piso_zombie);
	//alerta al recibir daño al estar parado
if speed = 0 {
alerta = 1;	
}
///animacion y sonido al recibir daño
if speed > 0 {
sprite_index = zombie1_bal00;
}
if (!audio_is_playing(em00dano)) {
		audio_play_sound(em00dano,10,false);
}
// vida restada por bala wep00
pl_00.salud_em_00 -= 5 
}
// al morir
if pl_00.salud_em_00 < 1 {
pl_00.salud_em_00 -= 0	
}
