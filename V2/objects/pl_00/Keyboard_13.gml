/// @description Disparo continuo
//////////////////////////////// MOTOR DE DISPARO (SEGIDO)  ////////////////////////////////
////////////////////////// wit_wep00   ////////////////////////////////

if Arma = 0 {
	if apuntar_caminar = 1 {
		
Atacando_armaBlanca = true;	

}
}


if distance_to_object(em_00) < 30 {
	if Arma = 0 {
	if apuntar_caminar = 1 {
		
if regreso_wit_wep00 < 22 {
		regreso_wit_wep00 += 1;	
}
if regreso_wit_wep00 >= 22 {
		regreso_wit_wep00 += 0;	
	regreso_wit_wep00 = 0;	
}

///////////////////////////////  DAÑO POR ARMA BLANCA   /////////////////////////////////

	if regreso_wit_wep00 = 1 {
		
	En_ataque_witWep00 = 1;
	
	}
	
	if regreso_wit_wep00 > 1 {
		
		En_ataque_witWep00 = 0;
	
	}
	
	}
}
}


No_RECARGAR = true;
if RECARGANDO = false {
	
// WEP00


if apuntar_caminar = 1 {
	
	if Arma = 1 {
	if Conteo_ani_wep00 < 8 {
		Conteo_ani_wep00 += 1;
		
		}	
	}
	
	v = 1;
}

// WEP01
if apuntar_caminar = 1 {
	
	if Arma = 2 {
		
		if Conteo_ani_wep01 < 8 {
		Conteo_ani_wep01 += 1;
		
		}	
	}
	
	v = 1;
}

//// cambio de animacion al disparar manteniedo pulsado el raton //////////


if apuntar_caminar = 1 {
	v = 2.1;
}



if apuntar_caminar = 1{
if vida = 1 {
	
	
// WEP02
// disparo segido de wep02
	if NoDISPARAR = false {
		
if fusilAsalto = 1 {
if Arma = 3 {
	
	if ammo02 = 0 {
		sprite_index = personaje1_apuntando_wep02;
		}

		if ammo02 > 0 {
		sprite_index = personaje1_disparando_wep02;
		}
		
}
}
	}
}



if fusilAsalto = 1 {
if Arma = 3 {
	if ammo02 > 0 {
		
		disparo_wep02 += 1;

if disparo_wep02 = 5 {
	audio_play_sound(wep02_shot,10,false);
	disparo_wep02 += 0;	
disparo_wep02 = 0;
		bala02 = instance_create_depth(x,y,depth,bal_02,);
ammo02--;

bala02.direction = point_direction(x,y,mira_wep00.x,mira_wep00.y);

bala02.speed = 18;



}

}
}

}
}
}

//LADRILLO

if Arma = 4 {
ResorteEstirado = 5;	
}
