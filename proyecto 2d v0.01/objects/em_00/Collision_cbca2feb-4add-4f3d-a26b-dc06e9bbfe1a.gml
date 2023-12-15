/*//daño por disparo para enemigo fantasma 
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
}*/



// daño recibido por bala
//daño por disparo_wep01
if pl_00.salud_em_00 > 0 {
	alarm[0] = 1
	danoEm00_arma = 2;
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
// vida restada por bala wep02 y distancia de daño aumentado
if distance_to_object(pl_00) < 32 {
pl_00.salud_em_00 -= 60 
}
if distance_to_object(pl_00) < 100 {
pl_00.salud_em_00 -= 30 
}
if distance_to_object(pl_00) < 250 {
pl_00.salud_em_00 -= 20 
}
if distance_to_object(pl_00) > 250 {
pl_00.salud_em_00 -= 0 
}
}
// al morir
if pl_00.salud_em_00 < 1 {
pl_00.salud_em_00 -= 0	
}