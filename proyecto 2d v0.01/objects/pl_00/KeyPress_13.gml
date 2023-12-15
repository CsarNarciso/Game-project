// funcion de interactuar-recojer objetos
if apuntar_caminar = 0 {
interactuar_recojer = 1;
}


///////dialogos////////
//casie wihout//
if numero_textoCASIE < 3 {
if CASIE_interactuar = 1 {
numero_textoCASIE += 1;	
}
}
else {
numero_textoCASIE = 0;	
}
//dr_house//
if numero_textoDR_HOUSE < 4 {
if DR_HOUSE_interactuar = 1 {
numero_textoDR_HOUSE += 1;	
}
}
else {
numero_textoDR_HOUSE = 0;	
}
/////////archivos de texto///////
if archivo_texto1_interactuar = 1 {
archivo_texto1_hoja += 1;	
}
if archivo_texto1_hoja = 4 {
archivo_texto1_hoja = 0;	
}


	v = 0
	
	if apuntar_caminar = 1 {
		// funcion de interactuar-recojer objetos
		interactuar_recojer = 0;
		
	///////// animacio de disparo //////////
	
	
	// WEP00
if movimiento_AWDS_disparoFuego_wep00 = 0 {

if Arma = 1 {
		if ammo > 0 {
	disparando_wep00_fuego = 1;
	sprite_index = personaje1_disparando_wep00der;
image_speed = 5;
}
}

}

if movimiento_AWDS_disparoFuego_wep00 = 90 {

if Arma = 1 {
		if ammo > 0 {
	disparando_wep00_fuego = 1;
	sprite_index = personaje1_disparando_wep00Ar;
image_speed = 5;
}
}

}

if movimiento_AWDS_disparoFuego_wep00 = 180 {

if Arma = 1 {
		if ammo > 0 {
	disparando_wep00_fuego = 1;
	sprite_index = personaje1_disparando_wep00isq;
image_speed = 5;
}
}

}

if movimiento_AWDS_disparoFuego_wep00 = 270 {

if Arma = 1 {
		if ammo > 0 {
	disparando_wep00_fuego = 1;
	sprite_index = personaje1_disparando_wep00Ab;
image_speed = 5;
}
}

}

		
		// WEP02
if movimiento_AWDS_disparoFuego_wep02 = 0 {

if fusilAsalto = 1 {
if Arma = 3 {
		if ammo02 > 0 {
	disparando_wep02_fuego = 1;
	sprite_index = personaje1_disparando_wep02der;
image_speed = 5;
}
}
}

}

if movimiento_AWDS_disparoFuego_wep02 = 90 {

if fusilAsalto = 1 {
if Arma = 3 {
		if ammo02 > 0 {
	disparando_wep02_fuego = 1;
	sprite_index = personaje1_disparando_wep02Ar;
image_speed = 5;
}
}
}

}

if movimiento_AWDS_disparoFuego_wep02 = 180 {

if fusilAsalto = 1 {
if Arma = 3 {
		if ammo02 > 0 {
	disparando_wep02_fuego = 1;
	sprite_index = personaje1_disparando_wep02isq;
image_speed = 5;
}
}
}

}

if movimiento_AWDS_disparoFuego_wep02 = 270 {

if fusilAsalto = 1 {
if Arma = 3 {
		if ammo02 > 0 {
	disparando_wep02_fuego = 1;
	sprite_index = personaje1_disparando_wep02Ab;
image_speed = 5;
}
}
}

}



/////////disparo y creacion de balas por medio de alarma////////////


//wep00
	if Arma = 1 {
if (ammo > 0) {
	alarm [2] = 2
}

}



//wep01
if Escopeta = 1 {
	if Arma = 2 {
if (ammo01 > 0) {
	alarm [2] = 1
}
}

}


//wep02
if fusilAsalto = 1 {
	if Arma = 3 {
if (ammo02 > 0) {
	alarm [2] = 1
}
}


}

	}