depth = 9
x = mouse_x;
y = mouse_y;
/////////animacion de mirilla al cambiar arma y apuntar a enemigo/////////

//SIN ARMA
if pl_00.Arma = 0 {
sprite_index = mira_sinArma;
}
// PISTOLA 9MM
if pl_00.Arma = 1 {
	if distance_to_object(em_00) > 1 {
sprite_index = mira_pistola;
	}
if distance_to_object(em_00) < 1 {
sprite_index = mira_pistola_apuntando;	
}
}
// ESCOPETA
if pl_00.Arma = 2 {
	if distance_to_object(em_00) > 1 {
sprite_index = mira_escopeta;
	}
if distance_to_object(em_00) < 1 {
sprite_index = mira_escopeta_apuntando;	
}
}
// M16
if pl_00.Arma = 3 {
	if distance_to_object(em_00) > 1 {
sprite_index = mira_pistola;
	}
if distance_to_object(em_00) < 1 {
sprite_index = mira_pistola_apuntando;	
}
}

