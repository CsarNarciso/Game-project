//funcion de interactuar-recojer objetos
if apuntar_caminar = 0 {
interactuar_recojer = 1;
}


//dialogos
//casie wihout
if numero_textoCASIE = 3 {
if CASIE_interactuar = 1 {
numero_textoCASIE += 1;	
}
}
else {
numero_textoCASIE = 0;	
}
//dr_house
if numero_textoDR_HOUSE = 4 {
if DR_HOUSE_interactuar = 1 {
numero_textoDR_HOUSE += 1;	
}
}
else {
numero_textoDR_HOUSE = 0;	
}
//archivos de texto
if archivo_texto1_interactuar = 1 {
archivo_texto1_hoja += 1;	
}
if archivo_texto1_hoja = 4 {
archivo_texto1_hoja = 0;	
}

	if apuntar_caminar = 1 {
	v = 2.1
	
	}
	

		 //funcion de interactuar-recojer objetos
		interactuar_recojer = 0;
		
	// animacio de disparo 
	
	
	// WEP00
if Arma = 1 {
		if ammo > 0 {
	disparando_wep00_fuego = 1;
}
}


// WEP01
if Arma = 2 {
	if Escopeta = 1 {
		if ammo01 > 0 {
	disparando_wep01_fuego = 1;
}
}
}




			
		// WEP02

if apuntar_caminar = 1 {
if fusilAsalto = 1 {
if Arma = 3 {
		if ammo02 > 0 {
	disparando_wep02_fuego = 1;
	sprite_index = personaje1_disparando_wep02;
image_speed = 5;
}
}
}
}
	


//disparo y creacion de balas por medio de alarma

if RECARGANDO = false {

if v = 2.1 {
//wep00
	if Arma = 1 {
if (ammo > 0) {
	alarm [2] = 2
	
	}

}
}


//wep01

if PODER_dispararWep01 = true {
if Escopeta = 1 {
	if Arma = 2 {
if (ammo01 > 0) {
		if CorrederaEscopeta = true {
	sprite_index = personaje1_disparando_wep01;
		}
	audio_play_sound(wep01_shot,10,false);
disparo_wep01 = 0;
		bala01 = instance_create_depth(x,y,depth,bal_01);
ammo01--;

bala01.direction = point_direction(x,y,mira_wep00.x,mira_wep00.y);

bala01.speed = 18;
}
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

