if pl_00.salud_em_00 <= 0 {
	x = x;
	y = y;
instance_destroy(cabeza_em00);	
}

	
if pl_00.salud_em_00 > 0 {

	x = em_00.x;
y = em_00.y;


Cambio_dir_cabezaEm00 += 1;
v_cabeza_em00 = 7.5;
speed = v_cabeza_em00;

if distance_to_object(em_00) < 1 {
direction = rot_cabeza_em00;
}
if distance_to_object(em_00) > 1 {
direction = point_direction(x,y,em_00.x,em_00.y)
	}


if Cambio_dir_cabezaEm00 < 50 {
rot_cabeza_em00 += 1;
}

if Cambio_dir_cabezaEm00 = 100 {
Cambio_dir_cabezaEm00 = 0;	
rot_cabeza_em00 = random(360);
}




// distancia para alcanze de disparo por medio de mira

if pl_00.Arma = 1 {
if distance_to_object(mira_wep00) < 2 {
	em_00.EnMira_em00 = 1;
}
}



if pl_00.Arma = 2 {
if distance_to_object(mira_wep00) < 2 {
	
	em_00.EnMira_em00 = 1;
	
	
}
}
if pl_00.Arma = 3 {
if distance_to_object(mira_wep00) < 2 {
	
	em_00.EnMira_em00 = 1;
	
	
}
}



if pl_00.Arma = 1 {
if distance_to_object(mira_wep00) > 2 {
	
	em_00.EnMira_em00 = 0;
	
	
}
}
if pl_00.Arma = 2 {
if distance_to_object(mira_wep00) > 2 {
	
	em_00.EnMira_em00 = 0;
	
	
}
}
if pl_00.Arma = 3 {
if distance_to_object(mira_wep00) > 2 {
	
	em_00.EnMira_em00 = 0;
	
	
}
}


// Daño recibido por arma blanca
// witWep00

if pl_00.En_ataque_witWep00 = 1 {
if pl_00.salud_em_00 > 0 {	
	pl_00.salud_em_00 -= 10;
	em_00.alarm[0] = 1
	em_00.danoEm00_arma = 4;
}
	
}



// daño recibido por bala


//daño por disparo_wep00

	if distance_to_object(mira_wep00) < 1 {
		if distance_to_object(bal_00) < 1 {
if pl_00.salud_em_00 > 0 {
	
	em_00.alarm[0] = 1;
	em_00.danoEm00_arma = 1;
	instance_create_depth(x,y,depth,sangre_piso_zombie);
	//alerta al recibir daño al estar parado
em_00.alerta = 1;	

///animacion y sonido al recibir daño
if em_00.speed > 0 {
em_00.sprite_index = zombie1_bal00;
}
if (!audio_is_playing(em00dano)) {
		audio_play_sound(em00dano,10,false);
}
// vida restada por bala wep00
pl_00.salud_em_00 -= 15; 
}

// al morir
if pl_00.salud_em_00 < 1 {
pl_00.salud_em_00 -= 0	
pl_00.vida_em00 = 0;
}
if pl_00.vida_em00 = 0 {
if pl_00.salud_em_00 > 0 {
	pl_00.salud_em_00 = 0;
}
	
}


}
}





//daño por disparo_wep01

if em_00.EnMira_em00 = 1 {
		if distance_to_object(bal_01) < 1 {
if pl_00.salud_em_00 > 0 {

// vida restada por bala wep01
if distance_to_object(pl_00) > 150 {
pl_00.salud_em_00 -= 0; 
}
if distance_to_object(pl_00) > 120 {
	///animacion y sonido al recibir daño
if em_00.speed > 0 {
em_00.sprite_index = zombie1_bal00;
}


if (!audio_is_playing(em00dano)) {
		audio_play_sound(em00dano,10,false);
}
		em_00.alarm[0] = 1
	em_00.danoEm00_arma = 2;
	//alerta al recibir daño al estar parado
em_00.alerta = 1;	
	instance_create_depth(x,y,depth,sangre_piso_zombie);
pl_00.salud_em_00 -= 5; 
}
if distance_to_object(pl_00) < 120 {
	///animacion y sonido al recibir daño
if em_00.speed > 0 {
em_00.sprite_index = zombie1_bal00;
}


if (!audio_is_playing(em00dano)) {
		audio_play_sound(em00dano,10,false);
}
		em_00.alarm[0] = 1
	em_00.danoEm00_arma = 2;
	//alerta al recibir daño al estar parado
em_00.alerta = 1;	
	instance_create_depth(x,y,depth,sangre_piso_zombie);
pl_00.salud_em_00 -= 25; 
}

if distance_to_object(pl_00) < 60 {
	///animacion y sonido al recibir daño
if em_00.speed > 0 {
em_00.sprite_index = zombie1_bal00;
}


if (!audio_is_playing(em00dano)) {
		audio_play_sound(em00dano,10,false);
}
		em_00.alarm[0] = 1
	em_00.danoEm00_arma = 2;
	//alerta al recibir daño al estar parado
em_00.alerta = 1;	
	instance_create_depth(x,y,depth,sangre_piso_zombie);
pl_00.salud_em_00 -= 60; 
}


// al morir
if pl_00.salud_em_00 < 1 {
pl_00.salud_em_00 -= 0	
pl_00.vida_em00 = 0;
}
if pl_00.vida_em00 = 0 {
if pl_00.salud_em_00 > 0 {
	pl_00.salud_em_00 = 0;
}
	
}


}
}
}



//daño por disparo_wep02

if em_00.EnMira_em00 = 1 {
	if distance_to_object(bal_02) < 8 {
if pl_00.salud_em_00 > 0 {
	
	em_00.alarm[0] = 1
	em_00.danoEm00_arma = 3;
	instance_create_depth(x,y,depth,sangre_piso_zombie);
	//alerta al recibir daño al estar parado
em_00.alerta = 1;	

///animacion y sonido al recibir daño
if em_00.speed > 0 {
em_00.sprite_index = zombie1_bal00;
}
if (!audio_is_playing(em00dano)) {
		audio_play_sound(em00dano,10,false);
}
// vida restada por bala wep02
pl_00.salud_em_00 -= 1.5;

// al morir
if pl_00.salud_em_00 < 1 {
pl_00.salud_em_00 -= 0	
pl_00.vida_em00 = 0;
}
if pl_00.vida_em00 = 0 {
if pl_00.salud_em_00 > 0 {
	pl_00.salud_em_00 = 0;
}
	
}


}
}
}

}
