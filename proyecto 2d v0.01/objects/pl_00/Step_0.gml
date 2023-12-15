depth = 2
/// variables de step
vv = 0;
vh = 0;

//muerte del jugador y fin de partida
	if salud = 0 {
	instance_destroy(em_00);
	instance_destroy(em_00_2);
	instance_destroy(em_00_3);
	instance_destroy(em_00_4);
	instance_destroy(em_00_5);
	instance_destroy(em_00_6);
	instance_destroy(em_00_7);
	instance_destroy(em_00_8);
	instance_destroy(em_00_9);
	instance_destroy(em_00_10);
	instance_destroy(em_00_11);
	instance_destroy(em_00_12);
	instance_destroy(em_00_13);
	instance_destroy(em_00_14);
	instance_destroy(em_00_15);
	instance_destroy(em_00_16);
	instance_destroy(em_00_17);
	instance_destroy(em_00_18);
	instance_destroy(em_00_19);
	instance_destroy(em_00_20);
	sprite_index = personaje1_muerte;
	}
		if salud < 0 {
	instance_destroy(em_00);
	instance_destroy(em_00_2);
	instance_destroy(em_00_3);
	instance_destroy(em_00_4);
	instance_destroy(em_00_5);
	instance_destroy(em_00_6);
	instance_destroy(em_00_7);
	instance_destroy(em_00_8);
	instance_destroy(em_00_9);
	instance_destroy(em_00_10);
	instance_destroy(em_00_11);
	instance_destroy(em_00_12);
	instance_destroy(em_00_13);
	instance_destroy(em_00_14);
	instance_destroy(em_00_15);
	instance_destroy(em_00_16);
	instance_destroy(em_00_17);
	instance_destroy(em_00_18);
	instance_destroy(em_00_19);
	instance_destroy(em_00_20);
	sprite_index = personaje1_muerte;
	}
	if sprite_index = personaje1_muerte {
v = 0
vida = 0
	}
	
	
else {
	///////// personaje vivo //////
	
	
	////////// estado de daño causado por enemigos al personaje ///////

//EM00
if object_exists(em_00) {
	if salud_em_00 > 0 {
	if em_00.animacion_atacar = 1
	//daño 
if (salud > 0) {
if poder_danar_pl00 = 1 {
	salud -= 1
poder_danar_pl00 = 0
alarm[3] = 1
}

if poder_danar_pl00 = 0 {
	salud -= 0
		efecto_mordida = 0;
efecto_mordida	+= 0;
}
}
else {
	salud -= 0;
}
	}
	}

//EM02
if object_exists(em_00_2) {
	if salud_em_002 > 0 {
	if em_00_2.animacion_atacar2 = 1
	//daño 
if (salud > 0) {
	alarm [3] = 8
salud -= 1;
}
else {
	salud -= 0;
}
	}
	}
 
//animacion de muerte de personaje 
if salud < 0 {
	audio_play_sound(pl00_death,150,false)
instance_destroy(em_00,);
image_speed = 0.5;
	sprite_index = personaje1_muerte;
}	
	}
	
	
	
	//DISPARO Y LINTERNA
if 	sprite_index = personaje1_derecha {
	//LINTERNA
linterna_D = 1	
//WEP00
apuntando_wep00Der = 1;
apuntando_wep00Isq = 0;
apuntando_wep00Ab = 0;
apuntando_wep00Ar = 0;
//WEP01
apuntando_wep01Der = 1;
apuntando_wep01Ab = 0;
apuntando_wep01Isq = 0;
apuntando_wep01Ar = 0;
//WEP02
apuntando_wep02Der = 1;
apuntando_wep02Ab = 0;
apuntando_wep02Isq = 0;
apuntando_wep02Ar = 0;
v = 2;
}
if 	sprite_index = personaje1_isquierda {
	//LINTERNA
linterna_I = 1	;
//WEP00
apuntando_wep00Der = 0;
apuntando_wep00Isq = 1;
apuntando_wep00Ab = 0;
apuntando_wep00Ar = 0;
//WEP01
apuntando_wep01Der = 0;
apuntando_wep01Ab = 0;
apuntando_wep01Isq = 1;
apuntando_wep01Ar = 0;
//WEP02
apuntando_wep02Der = 0;
apuntando_wep02Ab = 0;
apuntando_wep02Isq = 1;
apuntando_wep02Ar = 0;
v = 2;
}
if 	sprite_index = personaje1_arriba {
	//LINTERNA
linterna_Ar = 1	
//WEP00
apuntando_wep00Der = 0;
apuntando_wep00Isq = 0;
apuntando_wep00Ab = 0;
apuntando_wep00Ar = 1;
//WEP01
apuntando_wep01Der = 0;
apuntando_wep01Ab = 0;
apuntando_wep01Isq = 0;
apuntando_wep01Ar = 1;
//WEP02
apuntando_wep02Der = 0;
apuntando_wep02Ab = 0;
apuntando_wep02Isq = 0;
apuntando_wep02Ar = 1;
v = 2;
}
if 	sprite_index = personaje1_abajo {
	//LINTERNA
Linterna_Ab = 1	
//WEP00
apuntando_wep00Der = 0;
apuntando_wep00Isq = 0;
apuntando_wep00Ab = 1;
apuntando_wep00Ar = 0;
//WEP01
apuntando_wep01Der = 0;
apuntando_wep01Ab = 1;
apuntando_wep01Isq = 0;
apuntando_wep01Ar = 0;
//WEP02
apuntando_wep02Der = 0;
apuntando_wep02Ab = 1;
apuntando_wep02Isq = 0;
apuntando_wep02Ar = 0;
v = 2;
}

                 ///////////// movimiento del jugador //////////////
				 
				 //PARADO SIN HACER NADA

if speed = 0 {
	movimiento_AWDS = 0;
if disparando_wep02_fuego = false {
image_speed = 0;
}
}
//CORRIENDO 
if keyboard_check_direct(vk_space) { 
	
	if apuntar_caminar = 0 {
		
	if correr >= 200 {
	v = 2;
	}
	if correr < 200 {
	correr += 1;
	}
	if correr < 199 {
v = 5;
	}
}
}

// DESCANSANDO
if keyboard_check_released(vk_space) { 
	v = 2;
	if correr > 0 {
pl_00_energia.alarm[0] = 1;
	}
	else {
	correr -= 0;
	}
}
//DERECHA
if movimiento_AWDS = 0 {
if (keyboard_check_direct(ord("D"))) { 
				movimiento_AWDS = 1;
				movimiento_AWDS_disparoFuego_wep00 = 0;	
				movimiento_AWDS_disparoFuego_wep02 = 0;	
					NoDISPARAR = true; 

		if (!audio_is_playing(pl_00_paso)) {	
audio_play_sound(pl_00_paso,40,false);
}	
	image_speed = 0.5;
	sprite_index = personaje1_derecha;
	 linterna_D = 1;
 linterna_I = 0;
 linterna_Ar = 0;
 Linterna_Ab = 0;
	x += v;
}
}
	if (keyboard_check_released(ord("D"))) { 
movimiento_AWDS = 0;
NoDISPARAR = false; 
sprite_index = personaje1_derecha_parado;	
}
	
	//ISQUIERDA
		if movimiento_AWDS = 0 {
if (keyboard_check_direct(ord("A"))) {  
	
	movimiento_AWDS = 1;
	movimiento_AWDS_disparoFuego_wep00 = 180;	
	movimiento_AWDS_disparoFuego_wep02 = 180;
	NoDISPARAR = true; 
		if (!audio_is_playing(pl_00_paso)) {	
audio_play_sound(pl_00_paso,40,false);
}	
	image_speed = 0.5;
	sprite_index = personaje1_isquierda;
	 linterna_D = 0;
 linterna_I = 1;
 linterna_Ar = 0;
 Linterna_Ab = 0;
	x -= v;
}
}
	if (keyboard_check_released(ord("A"))) { 
movimiento_AWDS = 0;
NoDISPARAR = false; 
sprite_index = personaje1_isquierda_parado;	
}

//ARRIBA
	if movimiento_AWDS = 0 {
	if (keyboard_check_direct(ord("W"))) { 
		movimiento_AWDS = 1;
		movimiento_AWDS_disparoFuego_wep00 = 90;	
		movimiento_AWDS_disparoFuego_wep02 = 90;
		NoDISPARAR = true; 
		if (!audio_is_playing(pl_00_paso)) {	
audio_play_sound(pl_00_paso,40,false);
}	
	image_speed = 0.5;
	sprite_index = personaje1_arriba; 
 linterna_D = 0;
 linterna_I = 0;
 linterna_Ar = 1;
 Linterna_Ab = 0;
	y -= v;
	}
	}
	if (keyboard_check_released(ord("W"))) { 
movimiento_AWDS = 0;
NoDISPARAR = false; 
sprite_index = personaje1_arriba_parado;	
}
	
	//ABAJO
		if movimiento_AWDS = 0 {
if (keyboard_check_direct(ord("S"))) { 
movimiento_AWDS = 1;	
movimiento_AWDS_disparoFuego_wep00 = 270;	
movimiento_AWDS_disparoFuego_wep02 = 270;
NoDISPARAR = true; 
		if (!audio_is_playing(pl_00_paso)) {	
audio_play_sound(pl_00_paso,40,false);
}	
	image_speed = 0.5;
	sprite_index = personaje1_abajo;
	 linterna_D = 0;
 linterna_I = 0;
 linterna_Ar = 0;
 Linterna_Ab = 1;
	y += v;
}
}
if (keyboard_check_released(ord("S"))) { 
movimiento_AWDS = 0;
NoDISPARAR = false; 
sprite_index = personaje1_abajo_parado;	
}

//////// funcion de apuntar /////////


if (keyboard_check_direct(vk_shift)) { 
	apuntar_caminar = 1;
	
	//WEP00
if Arma = 1 {
	if disparando_wep00_fuego = 0 {
             if movimiento_AWDS_disparoFuego_wep00 = 0 {
		sprite_index = personaje1_apuntando_wep00Der;
		}
			if movimiento_AWDS_disparoFuego_wep00 = 90 {
		sprite_index = personaje1_apuntando_wep00Ar;
		}
			if movimiento_AWDS_disparoFuego_wep00 = 180 {
		sprite_index = personaje1_apuntando_wep00Isq;
		}
			if movimiento_AWDS_disparoFuego_wep00 = 270 {
		sprite_index = personaje1_apuntando_wep00Aba;
		}
	}
		if disparando_wep00_fuego = 1 {
             if movimiento_AWDS_disparoFuego_wep00 = 0 {
		sprite_index = personaje1_disparando_wep00der;
		}
			if movimiento_AWDS_disparoFuego_wep00 = 90 {
		sprite_index = personaje1_disparando_wep00Ar;
		}
			if movimiento_AWDS_disparoFuego_wep00 = 180 {
		sprite_index = personaje1_disparando_wep00isq;
		}
			if movimiento_AWDS_disparoFuego_wep00 = 270 {
		sprite_index = personaje1_disparando_wep00Ab;
		}
	}

}


		//WEP02
if Arma = 3 {
	if disparando_wep02_fuego = 0 {
             if movimiento_AWDS_disparoFuego_wep02 = 0 {
		sprite_index = personaje1_apuntando_wep02Der;
		}
			if movimiento_AWDS_disparoFuego_wep02 = 90 {
		sprite_index = personaje1_apuntando_wep02Ar;
		}
			if movimiento_AWDS_disparoFuego_wep02 = 180 {
		sprite_index = personaje1_apuntando_wep02Isq;
		}
			if movimiento_AWDS_disparoFuego_wep02 = 270 {
		sprite_index = personaje1_apuntando_wep02Ab;
		}
	}
		if disparando_wep02_fuego = 1 {
             if movimiento_AWDS_disparoFuego_wep02 = 0 {
		sprite_index = personaje1_disparando_wep02der;
		}
			if movimiento_AWDS_disparoFuego_wep02 = 90 {
		sprite_index = personaje1_disparando_wep02Ar;
		}
			if movimiento_AWDS_disparoFuego_wep02 = 180 {
		sprite_index = personaje1_disparando_wep02isq;
		}
			if movimiento_AWDS_disparoFuego_wep02 = 270 {
		sprite_index = personaje1_disparando_wep02Ab;
		}
	}

}


}


if (keyboard_check_released(vk_shift)) { 
		apuntar_caminar = 0;
		
		//WEP00
if Arma = 1 {
             if movimiento_AWDS_disparoFuego_wep00 = 0 {
		sprite_index = personaje1_derecha_parado
		}
			if movimiento_AWDS_disparoFuego_wep00 = 90 {
			sprite_index = personaje1_arriba_parado
		}
			if movimiento_AWDS_disparoFuego_wep00 = 180 {
			sprite_index = personaje1_isquierda_parado
		}
			if movimiento_AWDS_disparoFuego_wep00 = 270 {
			sprite_index = personaje1_abajo_parado
		}
}
		//WEP02
if Arma = 3 {
             if movimiento_AWDS_disparoFuego_wep02 = 0 {
		sprite_index = personaje1_derecha_parado
		}
			if movimiento_AWDS_disparoFuego_wep02 = 90 {
			sprite_index = personaje1_arriba_parado
		}
			if movimiento_AWDS_disparoFuego_wep02 = 180 {
			sprite_index = personaje1_isquierda_parado
		}
			if movimiento_AWDS_disparoFuego_wep02 = 270 {
			sprite_index = personaje1_abajo_parado
		}
}


}





///////codigos de interactuar con objetos///////////////

//PUERTAS//
//sala de espera interactuar
if distance_to_object(teletransportar_1) < 2 {
puerta_saladeespera_interactuar = 1;
}
else {
puerta_saladeespera_interactuar = 0;	
}
//usar y/o recojer llave de sala de espera
if LLave_sala_espera > 0 {
instance_destroy(llave_fierro_00);
}

// INVENTARIO ABRIR-CERRAR //////////

// ABRIR
if keyboard_check_pressed(vk_f1) {	
AbrCer_INVENTARIO += 1
}
if AbrCer_INVENTARIO = 1 {
	Abrir_INVENTARIO = true;
}
if AbrCer_INVENTARIO = 2 {
	AbrCer_INVENTARIO = 0;
	Abrir_INVENTARIO = false; 
}


//OBJETOS-ITEMS//


//municion de pistola
//recojer municion de pistola
if municion_de_pistola_recojer >= 5 {
instance_destroy(balwep00)	;
}
//recojer municion de pistola2
if municion_de_pistola_recojer2 >= 5 {
instance_destroy(balwep00_2)	;
}
//recojer municion de pistola3
if municion_de_pistola_recojer3 >= 5 {
instance_destroy(balwep00_3)	;
}
//recojer municion de pistola4
if municion_de_pistola_recojer4 >= 5 {
instance_destroy(balwep00_4)	;
}
//municion de escopeta
//recojer municion de escopeta
if municion_de_escopeta_recojer >= 5 {
instance_destroy(balwep01)	;
}
//recojer municion de escopeta2
if municion_de_escopeta_recojer2 >= 5 {
instance_destroy(balwep01_2)	;
}
//municion de M16
//recojer municion de M16
if municion_de_fusilAsalto_recojer >= 5 {
instance_destroy(balwep02)	;
}
//botiquin
//recojer botiquin
if botiquines_recojer >= 5 {
instance_destroy(botiquin00) ;
}
//recojer botiquin2
if botiquines_recojer2 >= 5 {
instance_destroy(botiquin00_2) ;
}
//recojer botiquin3
if botiquines_recojer3 >= 5 {
instance_destroy(botiquin00_3) ;
}
//recojer botiquin4
if botiquines_recojer4 >= 5 {
instance_destroy(botiquin00_4) ;
}

//ARMAS//

//Escopeta
//recojer escopeta
if Escopeta > 0 {
instance_destroy(escopeta);
}
//M16
//recojer M16
if fusilAsalto > 0 {
instance_destroy(Fusil_Asalto);
}

//PERSONAJES//
//Casie wihout
if distance_to_object(casie_wihout) < 30 {
CASIE_interactuar = 1;
}
else {
CASIE_interactuar = 0;	
numero_textoCASIE = 0;
}

//dr house
if distance_to_object(dr_house) < 30 {
DR_HOUSE_interactuar = 1;
}
else {
DR_HOUSE_interactuar = 0;	
numero_textoDR_HOUSE = 0;
}

/// establecer valores finales al objeto
hspeed = vh;
vspeed = vv;

///control de coliciones contra solidos
if(place_meeting(x+vh,y,vspeed)){
vh = 0;	
}
if(place_meeting(x,y+vv,hspeed)){
vv = 0;
}

//////archivos de texto//////
//TEXTO 01
if distance_to_object(archivo_texto_recojer) <2 {
archivo_texto1_interactuar = 1;
}
if distance_to_object(archivo_texto_recojer) >2 {
archivo_texto1_interactuar = 0;
archivo_texto1_hoja = 0;


}
