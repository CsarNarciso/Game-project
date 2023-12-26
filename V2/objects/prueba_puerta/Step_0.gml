depth =  3;
image_speed = 0;


if distance_to_object(pl_00) < 1 {
if image_angle > 90 {
	image_angle += 0;
	}
	if image_angle < 90 {
	image_angle += 15;
	}
	if image_angle > 270 {
	image_angle += 15;
	}
	
}


if distance_to_object(pl_00) > 15 {
	
if image_angle < 270 {
	image_angle -= 0;
	}
	if image_angle > 270 {
	image_angle -= 3;
	}
	if image_angle > 0 {
	image_angle -= 3;
	}
	
}

//Comprobar si hay enemigo cerca para volver NO solido al objeto puerta
if distance_to_object(em_00) < 70 {
solid = false;	
}
else {
solid = true;	
}

/////////////DESTRUCCCION DE PUERTA (POR ZOMBIES)/////////	
if distance_to_object(em_00) < 1 {
	DurabilidadDePuerta_1 += 1;
}
if DurabilidadDePuerta_1 >= 40 {
instance_destroy(other);
}


/*  MOTOR_PUERTA_RPG
// variables de control  del objeto para funcionalidad
image_speed = 0
depth = 3


// MOTOR DE SISTEMA DE PUERTA


// establecimiento de estado de imajen y estado solido del objeto
if image_index = 0 {
solid = true	
}
if image_index = 1 {
solid = false	
}

// funcionalidad al abrir y cerrar puerta con una tecla pulsada

// poder abrir y cerrar puerta por medio de variables
if keyboard_check_pressed(vk_enter) {
	
	if distance_to_object(pl_00) < 40 {
	
	
	puerta00_abrir += 1
	
	if puerta00_abrir = 2 {
		
	puerta00_abrir += 0;
	puerta00_abrir = 0;
	
	}
	
}
// no poder cerrar la puerta (el jugador esta sobre ella)
if distance_to_object(pl_00) = 0 {
puerta00_abrir = 1;	
}

}

// control de estado de la puerta (abierta-cerrada) para controlar el estado de imajen y estado solido
// ABIERTA
if puerta00_abrir = 1 {
image_index = 1;	
}
//CERRADA
if puerta00_abrir = 0 {
image_index = 0;	
}


