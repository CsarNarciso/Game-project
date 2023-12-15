x = pl_00.x;
y = pl_00.y-80;

depth = -2;

if boton_guardar.Zona_Guardado = true {

if keyboard_check_pressed(vk_right) {
NUMERO_SLOT_GUARDAR_PARTIDA	= 2;
}

if keyboard_check_pressed(vk_left) {
NUMERO_SLOT_GUARDAR_PARTIDA	= 1;
}

}

if boton_guardar.Zona_Guardado = false {
NUMERO_SLOT_GUARDAR_PARTIDA	= 0;	
}
