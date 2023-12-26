
//IMPLEMENTACION DE NUEVOS CODIGOS, EFECTOS
image_speed = 0.2;





///////////////////////////////////ESTADOS////////////////////////////////////////


//Quieta
if Apuntando = false { if corriendo = false { if Caminando = false { if Agachada = false { Quieta_Parada = true }}}}
 if Agachada = true { Quieta_Parada = false } 
if Caminando = true { Quieta_Parada = false } 


//Quieta Agachada
if Apuntando = false { if corriendo = false { if Caminando = false { if Agachada = true { Quieta_Agachada = true }}}}
if Agachada = false { Quieta_Agachada = false }
if Caminando = true { Quieta_Agachada = false } 
 
 
////////Apuntando Agachada
if Agachada = true { if keyboard_check_direct(ord("F")) { Apuntando_Agachada = true }}
if Agachada = false { if keyboard_check_direct(ord("F")) { Apuntando_Agachada = false }}
if keyboard_check_released(ord("F")) { Apuntando_Agachada = false }


////////pausa
if keyboard_check_pressed(ord(vk_enter)) { Pausa = true }
if Pausa = true { if keyboard_check_pressed(vk_enter) { Pausa = false } }

if Pausa = false { 
	
////////Inventario
if MenuRecursos = false {
if keyboard_check_direct(ord("G")) { inventario = true }
if keyboard_check_released(ord("G")) { inventario = false }
}

////////Menu_Recursos
if inventario = false {
if keyboard_check_direct(ord("T")) { MenuRecursos = true }
if keyboard_check_released(ord("T")) { MenuRecursos = false }
}


////////Curarse
if MenuRecursos = true { if keyboard_check_direct(vk_up) {  Curandose = true } if keyboard_check_released(vk_up) { Curandose = false } }


////////DetenerSangrado
if MenuRecursos = true { if keyboard_check_direct(vk_down) { DeteniendoSangrado = true } if keyboard_check_released(vk_down) { DeteniendoSangrado = false } }


////////Comer
if MenuRecursos = true { if keyboard_check_direct(vk_left) { Comiendo = true } if keyboard_check_released(vk_left) { Comiendo = false } }


////////Tomar Agua
if MenuRecursos = true { if keyboard_check_direct(vk_right) { BebiendoAgua = true } if keyboard_check_released(vk_right) { BebiendoAgua = false } }


////////Caminar 
if Retrocediendo = false { if Retrocediendo_sigilo = false { if Apuntando = false { if keyboard_check_direct(ord("A")) { Caminando = true } if keyboard_check_direct(ord("S")) { Caminando = true } if keyboard_check_direct(ord("D")) { Caminando = true } if keyboard_check_direct(ord("W")) { Caminando = true } }}}
if keyboard_check_released(ord("A")) { Caminando = false } if keyboard_check_released(ord("S")) { Caminando = false } if keyboard_check_released(ord("D")) { Caminando = false } if keyboard_check_released(ord("W")) { Caminando = false }
if keyboard_check_released(vk_up) { corriendo = false}

////////Correr
if Apuntando = false { if Agachada = false { if Caminando = true { if keyboard_check_direct(vk_up) { corriendo = true; v = 6} }}}
if Apuntando = false { if Agachada = false { if Caminando = false { if keyboard_check_direct(vk_up) { corriendo = false} }}}


//Velocidad
if corriendo = false {
if Caminando = true { if Agachada = false { v = 2.5} } 
if Caminando = true { if Agachada = true { v = 1.5} }
}



////////Agacharse	
if corriendo = false {
if keyboard_check_pressed(vk_control) { if Contador_agacharse <= 2 { Contador_agacharse += 1}}
if Contador_agacharse = 1 { Agachada = true}
if Contador_agacharse = 2 {Agachada = false; Contador_agacharse = 0}
}

////////Caminando sigilo
if Caminando = true { if Agachada = true { Caminando_sigilo = true } }
if Caminando = false { Caminando_sigilo = false}
if Agachada = false { Caminando_sigilo = false}


////////Retroceder
if Apuntando = false { if corriendo = false { if Caminando = false { if keyboard_check_direct(vk_down) {Retrocediendo = true} }}}
if keyboard_check_released(vk_down) {Retrocediendo = false} 

////////Retroceder sigilo
if Retrocediendo = true { if Agachada = true { Retrocediendo_sigilo = true } }
if Retrocediendo = false { if Agachada = true { Retrocediendo_sigilo = false } }
if Agachada = false { Retrocediendo_sigilo = false }




////////Apuntando
if Agachada = false { if keyboard_check_direct(ord("F")) { Apuntando = true v = 0; }}
if Agachada = true { if keyboard_check_direct(ord("F")) { Apuntando = false; }}
if keyboard_check_released(ord("F")) { Apuntando = false; v = 2; }






////////Disparar
//if Apuntando = true { if keyboard_check_direct(vk_up) {Disparando = true} }


////////Recargar
if Apuntando = true { if keyboard_check_direct(vk_down) {Recargando = true} if keyboard_check_released(vk_down) {Recargando = false}}


////////Cambiar Arma
if keyboard_check_pressed(vk_left) { if Arma > 0 {Arma -= 1} }
if keyboard_check_pressed(vk_right) { if Arma < 5 {Arma += 1} }


////////Interactuar
if keyboard_check_pressed(vk_up) { Interactuar = true }
if keyboard_check_released(vk_up) { Interactuar = true }

}




//¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨ESTADOS DESENCADENACION DE EFECTOS¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨//
//**********************************************************************************************************************************************************************//


////////////////////////////////////////////Quieta Parada//////////////////////////////////////////
if Quieta_Parada = true { Estado = 1; EstadoTex = "Quieta/Parada"} 
	

if Estado = 1{
	
//sonido
 
//imajen 
sprite_index = personaje1_parado;

//EfectosMovimiento

}


/////////////////////////////////////////////////////////////////////////////////////////////////////////


////////////////////////////////////////////Quieta Agachada//////////////////////////////////////////
if Quieta_Agachada = true { Estado = 1.1; EstadoTex = "Quieta/Agachada"}


if Estado = 1.1{
	
//sonido
 
//imajen 
sprite_index = personaje1_agachado;

//EfectosMovimiento

}


/////////////////////////////////////////////////////////////////////////////////////////////////////////


//////////////////////////////////////////////////Caminando parada////////////////////////////////////////////////////////////
if Caminando = true { Estado = 2; EstadoTex = "Caminando" ;}
if Estado = 2 {
	
//sonido
 if (!audio_is_playing(pl_00_paso)) {audio_play_sound(pl_00_paso,40,false)} 
 
//imajen 
if Arma = 0 {sprite_index = personaje1_caminando} if Arma = 1 {sprite_index = personaje1_caminandoConArma_wep00}


//EfectosMovimiento
image_angle = rotacion_dir;

//Isquierda
if (keyboard_check(ord("A"))) { x -= v; rotacion_dir = 180; }

        //Abajo
if (keyboard_check(ord("S"))) { y += v; rotacion_dir = 270; }

		          //Derecha
if (keyboard_check(ord("D"))) { x += v; rotacion_dir = 0; }

                             //Arriba
if (keyboard_check(ord("W"))) { y -= v; rotacion_dir = 90; }


}
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


//////////////////////////////////////////////////Caminando agachada////////////////////////////////////////////////////////////
if Caminando_sigilo  = true {  /*Estado = 2.1;*/ EstadoTex = "Caminando/Agachada"  

//if Estado = 2.1 {

//imajen 
if Arma = 0 {sprite_index = personaje1_caminandoAgachado}  if Arma = 1 {sprite_index = personaje1_caminandoAgachadoConArma_wep00 }

}
//}


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	
	
//////////////////////////////////////////Retrocediendo Parada//////////////////////////////////////////
//if Retrocediendo = true { Estado = 3; EstadoTex = "Retrocediendo" }
/////////////////////////////////////////////////////////////////////////////////////////////////////////


//////////////////////////////////////////Retrocediendo Agachada//////////////////////////////////////////
//if Retrocediendo_sigilo = true { Estado = 3.1; EstadoTex = "Retrocediendo/Agachada" }
/////////////////////////////////////////////////////////////////////////////////////////////////////////


//////////////////////////////////////////////////////////Corriendo////////////////////////////////////////////////////////
if corriendo = true { Estado = 4; EstadoTex = "Corriendo" }
if Estado = 4 {
	
//sonido
 if (!audio_is_playing(pl_00_paso)) {audio_play_sound(pl_00_paso,40,false)} 
 
//imajen 
if Arma = 0 {sprite_index = personaje1_corriendo} if Arma = 1 {sprite_index = personaje1_corriendoConArma_wep00}


//EfectosMovimiento
	
}
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////


/////////////////////////////////////////////////Apuntando/////////////////////////////////////////////////////////
if Apuntando = true {  Estado = 5; EstadoTex = "Apuntando";}
if Estado = 5 {


	
//sonido
 
//imajen 
if Arma = 0 {sprite_index = personaje1_EnDefensa_witWep00} if Arma = 1 {sprite_index = personaje1_apuntando_wep00} if Arma = 2 {sprite_index = personaje1_apuntando_wep01} if Arma = 3 {sprite_index = personaje1_apuntando_wep02}

//EfectosMovimiento
v = 0;

}
////////////////////////////////////////////////////////////////////////////////////////////////////////////////


////////////////////////////////////////////Apuntando Agachada//////////////////////////////////////////
if Apuntando_Agachada = true {   EstadoTex = "Apuntando/Agachada" 
	
//sonido
 
//imajen 
if Arma = 0 {sprite_index = personaje1_EnDefensa_witWep00} if Arma = 1 {sprite_index = personaje1_apuntandoAgachado_wep00} if Arma = 2 {sprite_index = personaje1_apuntando_wep01} if Arma = 3 {sprite_index = personaje1_apuntando_wep02}

//EfectosMovimiento


}
/////////////////////////////////////////////////////////////////////////////////////////////////////////
		


//**********************************************************************************************************************************************************************//
//¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨//









//image_angle = rotacion_dir; //rotacion_dir;






/*if keyboard_check_direct(ord("F")) {
	v = 1.5
image_angle = point_direction(x,y,mira_wep00.x,mira_wep00.y) //rotacion_dir;
}

if keyboard_check_released(ord("F")) { 
	v = 6;
image_angle = point_direction(x,y,mira_wep00.x,mira_wep00.y) //rotacion_dir;
}*/




/////////PARA QUE GUARDE AL ZOMBI MUERTO, AIQUE COMPROBAR CODIGO DE VIDA Y SALUD DEL MISMO/////////
//poner que cuando salud = 0... vida = 0 y esa sera la variable global que guardara el archivo ini


/*

if ladrillo_Roto = true {  // comprobar la distancia con el jugador para empe<ar a dejar de segir al jugador
	DEJARdeSegir_ladrillo += 1;  // empezar a dejar de segir al jugador
}*/
/*

if DEJARdeSegir_ladrillo = 0 {
	if object_exists(Ladrillo) {
	DEJARdeSegir_ladrillo = 1;	
	}
}

// CONTROL DE ESTADO DE NIVEL SEGIMIENTO (IA) DE ZOMBIE (SEGIMIENTO POR DISTANCIA)

if DEJARdeSegir_ladrillo = 140 {
DEJARdeSegir_ladrillo += 0;
DEJARdeSegir_ladrillo = 0;
}
if DEJARdeSegir_ladrillo = 0 { // comprobar si el nivel de segimiento a disminuido para dejar de segir al jugador
ladrillo_Roto = false;
}


	////////// estado de daño causado por enemigos al personaje ///////

//EM00




if salud_em_00 <= 0 {
	vida_em00 = 0;
}


if salud_em_00 > 0 {
vida_em00 = 1;

	if em_00.animacion_atacar = 1 {
	if vida = 1 {
	
	depth = 4;
	//speed = 0;
if (salud > 0) {
if poder_danar_pl00 = 1 {
		audio_play_sound(pl00_dam1,10,false)
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
	}
	}
}
	
else {
	salud -= 0;
}

// WEP01- TIEMPO PARA PODER DISPARAR	
if Arma = 2 {

if tiempo_regresoDisparo_wep01 < 25 {
	CorrederaEscopeta = false;
tiempo_regresoDisparo_wep01 += 1;
}

if tiempo_regresoDisparo_wep01 = 25 {
tiempo_regresoDisparo_wep01 += 0;	
}

if tiempo_regresoDisparo_wep01 = 25 {
	if apuntar_caminar = 1 {
	if mouse_check_button_pressed(mb_right) {
	audio_play_sound(cambiar_arma,10,false);
CorrederaEscopeta = true;
	}
	}
	if CorrederaEscopeta = true {
if mouse_check_button_pressed(mb_left) {
tiempo_regresoDisparo_wep01 = 0;	
}
}
	
}


if tiempo_regresoDisparo_wep01 < 25 {
PODER_dispararWep01 = false;	
}
if CorrederaEscopeta = true {
PODER_dispararWep01 = true;	
}

}




///// MOTOR DE CONTROL DE ECENA (PRUEBA)

if distance_to_object(casie_wihout) < 70 {
	
	if duracion_ecena > 0 {
duracion_ecena += 1;
	}
	
	if duracion_ecena = 150 {
duracion_ecena += 0;
duracion_ecena = 0;
	
	}
	

}

if duracion_ecena > 2 {
	
Ecena = true;
	
}

if duracion_ecena = 0 {
	
Ecena = false;
	
}



if Ecena = true {
	
sprite_index = personaje1_parado;		
if (!audio_is_playing(Voz_Jake1)) {
audio_play_sound(Voz_Jake1,20,false);
}

}


// Control de agarre de zombie al jugador

// SI ESTA A DISTANCIA PARA SER AGARRADO


if distance_to_object(em_00) < 10 {
	Agarre_zombie = true;
}

// SI NO ESTA A DISTANCIA PARA SER AGARRADO
	
	if distance_to_object(em_00) > 10 {
	Agarre_zombie = false;	
	}
	
	
// MOTOR COMPLETO DE JUGADOR

	if Ecena = false {


/*
if movimiento_AWDS = 0 {
	
	if apuntar_caminar = 0 {
sprite_index = personaje1_parado;
	}
	
	if sprite_index = personaje1_parado {
		
	if movimiento_AWDS = 1 {
		if corriendo = 0 {
		
		
		if Arma = 0 {
	sprite_index = personaje1_caminando;
		}
			if Arma = 1 {
	sprite_index = personaje1_caminandoConArma_wep00;
		}
		if Arma = 2 {
	sprite_index = personaje1_caminando;
		}
			if Arma = 3 {
	sprite_index = personaje1_caminando;
		}
	
		}
		
			if corriendo = 1 {
		
		
		if Arma = 0 {
	sprite_index = personaje1_corriendo;
		}
			if Arma = 1 {
	sprite_index = personaje1_corriendoConArma_wep00;
		}
			if Arma = 2 {
	sprite_index = personaje1_corriendo;
		}
			if Arma = 3 {
	sprite_index = personaje1_corriendo;
		}
	
		}
		
	}
	
	
	
	}

}

if movimiento_AWDS = 1 {
	
//	if correr >= 198 {
			//if correr < 198 {
	
	if corriendo = 1 {
				
			if Arma = 0 {	
	sprite_index = personaje1_corriendo;
			}
			if Arma = 1 {	
	sprite_index = personaje1_corriendoConArma_wep00;
			}
				if Arma = 2 {	
	sprite_index = personaje1_corriendo;
			}
			if Arma = 3 {	
	sprite_index = personaje1_corriendo;
			}
		
	}
}
		
		
		
		
		
		
	/*if movimiento_AWDS = 1 {
	if corriendo = 0 {
		if apuntar_caminar = 0 {
			
			
		if Arma = 0 {	
	sprite_index = personaje1_caminando;
		}
			if Arma = 1 {	
	sprite_index = personaje1_caminandoConArma_wep00;
			}
			if Arma = 2 {	
	sprite_index = personaje1_caminando;
			}
			if Arma = 3 {	
	sprite_index = personaje1_caminando;
			}
		
		
		}
		
	}
	
	
	}	*/







/*


///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//muerte del jugador y fin de partida
if vida = 0 {
	sprite_index = personaje1_muerte;
if (!audio_is_playing(pl00_death)) {
		audio_play_sound(pl00_death,10,false);
}
instance_create_depth(x,y,depth,pl_00_muerto);
	}
	
	if salud < 1 {
v = 0
vida = 0
	}
	
	
else {
	///////// personaje vivo //////
	if vida > 0 {
v = 4;
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////	


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
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// 
//animacion de muerte de personaje 
if salud < 0 {
	audio_play_sound(pl00_death,150,false)
instance_destroy(em_00,);
image_speed = v_movimiento;
	sprite_index = personaje1_muerte;
}	
	}
	

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                 ///////////// movimiento del jugador //////////////
				 
				 
				 if PODER_agarrar_em00 = false {
				 
				 //PARADO SIN HACER NADA

if speed = 0 {
	movimiento_AWDS = 0;
if disparando_wep02_fuego = false {
image_speed = 0;
}
}

if v > 0 {
image_speed = v_movimiento;
}
}
	
	
	}
	
}



///////////////////////////////////CORRIENDO////////////////////////////////////////////

		if keyboard_check_direct(vk_space) { 
			if Apuntando = false {
			if apuntar_caminar = 0 {
				
		corriendo = 1;				
		}
		}
		}
		
		if keyboard_check_released(vk_space) { 
		corriendo = 0;	
		}
		
//////////////////////////////////VELOCIDAD DEL JUGADOR///////////////////////////////////////////////////
	
	if corriendo = 0 {
		if Apuntando = false {
		v = 2;	
			}
		}
		
		if corriendo = 1 {
			if Apuntando = false {
		v = 5;	
			}
		} 
		
		if Apuntando = true {
		v = 0;	
		}
		
////////////////////////////////////////////////////////////////////////////////////////////////////////		
		/*if correr < 398 {
				corriendo = 1;
		}
		
		if correr >= 399 {
				corriendo = 0;
		}
		
			if correr = 400 {
				corriendo = 0;
		}
		
		
		
	if correr >= 400 {
	v = 2;
	}
	if correr < 400 {
	correr += 1;
	}
	if correr < 398 {
v = 5;
	}
		}*/


/* DESCANSANDO
if keyboard_check_released(vk_space) { 
	corriendo = 0;
	v = 2;
	if correr > 0 {
pl_00_energia.alarm[0] = 1;
	}
	else {
	correr -= 0;
	}
}*/






	
	
	
	
	
	
	
/*	//////////////////////////////////////////////////////////////GIRO CON TECLA ALT////////////////////////////////////////////////////////////
	
	
//A la derecha D
if rotacion_dir < 0 {
rotacion_dir = 270;	
}
//A la isquierda A
if rotacion_dir > 270 {
rotacion_dir = 0;	
}
	
	
		if Contador_Girot180 > 0 {
		Tiempo_Giro180 += 1;
		}

	if Tiempo_Giro180 = 10 {
	Contador_Girot180 = 0;	
	Tiempo_Giro180 = 0;
	}
	
if keyboard_check_pressed(vk_alt) {
	
	Contador_Girot180 += 1;

	if Contador_Girot180 = 2 {
	Contador_Girot180 = 5;
	}
}




	

	
//LADOS

//Der_Isq
if rotacion_dir = 0 {
	if Contador_Girot180 = 5 {
GIRO180 = 2;
	}
}


//ISq_Der
if rotacion_dir = 180 {
	if Contador_Girot180 = 5 {
GIRO180 = 4;
	}
}


//ARRIBA_ABAJO

//Arriba_abajo
if rotacion_dir = 90 {
	if Contador_Girot180 = 5 {
GIRO180 = 6;
	}
}


//Abajo_arriba
if rotacion_dir = 270 {
	if Contador_Girot180 = 5 {
GIRO180 = 8;
	}
}


///////////////////////////////////MOTOR GIRO////////////////////////////////////////////////////

	
//LADOS
if GIRO180 = 4 {
rotacion_dir = 0;	
}
if GIRO180 = 2 {
rotacion_dir = 180;	
}

//ARRIBA_ABAJO
if GIRO180 = 8 {
rotacion_dir = 90;	
}
if GIRO180 = 6 {
rotacion_dir = 270;	

}*/






	//////////////////////////////////////////////////////////////RETROCEDER////////////////////////////////////////////////////////////
	//if (keyboard_check_direct(ord("F"))) { 
//if Apuntando = false {
			
	
		/*if (keyboard_check_pressed(vk_left or vk_down or vk_right or vk_up)) {
			if Poder_Retroceder < 2 {
			Poder_Retroceder += 1;
			}
			if Poder_Retroceder >= 2 {
			Poder_Retroceder += 0;
			}
		}
		if (keyboard_check_released(vk_left or vk_down or vk_right or vk_up)) {
			if Poder_Retroceder > 0 {
			Poder_Retroceder -= 1;
			}
			if Poder_Retroceder <= 0 {
			Poder_Retroceder -= 0;
			}
		}*/
			
			/*if (keyboard_check_released(vk_down)) { Dir_Retrocediendo = 15}
				if (keyboard_check_released(vk_right)) { Dir_Retrocediendo = 15 }
					if (keyboard_check_released(vk_up)) { Dir_Retrocediendo = 15}*/

		
	/*		
			
//if Poder_Retroceder = 1 {
if (keyboard_check_released(vk_left or vk_down or vk_right or vk_up)) { Dir_Retrocediendo = 15}



if (keyboard_check_direct(vk_left)) {   
	Dir_Retrocediendo = 180;
}

if (keyboard_check_direct(vk_down)) {  
	Dir_Retrocediendo = 270;
}

if (keyboard_check_direct(vk_right)) {  
	Dir_Retrocediendo = 0;
}

if (keyboard_check_direct(vk_up)) {   
	Dir_Retrocediendo = 90;
}
	
	
	
	
	if Dir_Retrocediendo = 0 {
		x += 3.5;
		image_angle = 180;
	}
	if Dir_Retrocediendo = 90 {
		y -= 3.5;
		image_angle = 270;
	}
	if Dir_Retrocediendo = 180 {
	x -= 3.5;
	image_angle = 0;
	}
	if Dir_Retrocediendo = 270 {
		y += 3.5;
		image_angle = 90;
	}

	

	
}
		//}
	//}
		


	


///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////// funcion de apuntar /////////


//if (keyboard_check_direct(ord("F"))) { 
	if (keyboard_check_direct(vk_shift)) {
	Apuntando = true;
	


	
	if corriendo = 0 {
	apuntar_caminar = 1;


image_angle = point_direction(x,y,mira_wep00.x,mira_wep00.y) //rotacion_dir;

// WIT_WEP00


if Arma = 0 {
	
	
	
	if Atacando_armaBlanca = false {	
sprite_index = personaje1_EnDefensa_witWep00;	
	}
		if Atacando_armaBlanca = true {	
sprite_index = personaje1_Atacando_witWep00;	
	}
	
}
	
	//WEP00
if Arma = 1 {
	if disparando_wep00_fuego = 0 {
             
				 
				if movimiento_AWDS = 0 {
		sprite_index = personaje1_apuntando_wep00;
				}
					if movimiento_AWDS = 1 {
		sprite_index = personaje1_apuntandoYcaminando_wep00;
					
					}
			
	}
	
	if disparando_wep00_fuego = 1 {
		
	if Conteo_ani_wep00 < 3 {
		sprite_index = personaje1_disparando_wep00;
		}
		
		if Conteo_ani_wep00 = 3 {
			sprite_index = personaje1_apuntando_wep00;
		}	
	
	}
	

}


		//WEP01
if Arma = 2 {
	if disparando_wep01_fuego = 0 {
             
				 
				if movimiento_AWDS = 0 {
		sprite_index = personaje1_apuntando_wep01;
				}
					if movimiento_AWDS = 1 {
		sprite_index = personaje1_apuntandoYcaminando_wep01;
					
					}
			
	}
	
	if disparando_wep01_fuego = 1 {
		
		if PODER_dispararWep01 = true {
	if Conteo_ani_wep01 < 3 {
		sprite_index = personaje1_disparando_wep01;
		}
	}
		
		
		
		if Conteo_ani_wep01 = 3 {
			sprite_index = personaje1_apuntando_wep01;
		}	
	
	}
}
	


		//WEP02
if Arma = 3 {
	if disparando_wep02_fuego = 0 {
		if movimiento_AWDS = 0 {
		sprite_index = personaje1_apuntando_wep02;
		}
			if movimiento_AWDS = 1 {
		sprite_index = personaje1_apuntandoYcaminando_wep02;
		}
		}
			
		if disparando_wep02_fuego = 1 {
		sprite_index = personaje1_disparando_wep02;
		}
		
}
	
	}

}


//if (keyboard_check_released(ord("F"))) {
if (keyboard_check_released(vk_shift)) {
	Apuntando = false;
apuntar_caminar = 0;
		//v = 2;
		
		//WITWEP00
		
		if Arma = 0 {
		if movimiento_AWDS = 0 {
		sprite_index = personaje1_parado;	
		}
		if movimiento_AWDS = 1 {
             sprite_index = personaje1_caminando;
	}
		}
		
		//WEP00
if Arma = 1 {
	if movimiento_AWDS = 0 {
             sprite_index = personaje1_parado;
	}
		if movimiento_AWDS = 1 {
             sprite_index = personaje1_caminandoConArma_wep00;
	}
}


		//WEP01
if Arma = 2 {
	if movimiento_AWDS = 0 {
             sprite_index = personaje1_parado;
	}
		if movimiento_AWDS = 1 {
             sprite_index = personaje1_caminando;
	}
}


		//WEP02
if Arma = 3 {
	if movimiento_AWDS = 0 {
sprite_index = personaje1_parado;
	}
	if movimiento_AWDS = 1 {
sprite_index = personaje1_caminando;
	}
}



}
		
				


///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
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
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
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
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////archivos de texto//////
//TEXTO 01
if distance_to_object(archivo_texto_recojer) <2 {
archivo_texto1_interactuar = 1;
}
if distance_to_object(archivo_texto_recojer) >2 {
archivo_texto1_interactuar = 0;
archivo_texto1_hoja = 0;


}

	
