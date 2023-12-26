// funcion de interactuar-recojer objetos

interactuar_recojer = 0;



// cambiar de sprite y dejar de disparar al soltar raton/////////

////////////////////////// wit_wep00   ////////////////////////////////

Atacando_armaBlanca = false;


No_RECARGAR = false;
// WEP00	

if Arma = 1 {
	Conteo_ani_wep00 = 0;
disparando_wep00_fuego = false;
sprite_index = personaje1_apuntando_wep00;
}


// WEP01	

if Arma = 2 {
	Conteo_ani_wep01 = 0;
disparando_wep01_fuego = false;
sprite_index = personaje1_apuntando_wep01;
}


// WEP02

	if fusilAsalto = 1 {
if Arma = 3 {
disparando_wep02_fuego = false;
sprite_index = personaje1_apuntando_wep02;
}
}

//RESORTERA
if Arma = 4 {
	
	audio_play_sound(wep00_shot,10,false);
disparo_resortera = 0;
		balaLadrillo = instance_create_depth(x,y,depth,Ladrillo,);
balaLadrillo.direction = point_direction(x,y,mira_wep00.x,mira_wep00.y);
balaLadrillo.speed = 8;

}
