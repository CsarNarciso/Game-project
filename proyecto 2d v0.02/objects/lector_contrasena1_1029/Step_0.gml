////////contraseñas////////
//LECTOR 1 Y CONTRASEÑA 1 
if distance_to_object(pl_00) > 3 {
	keyboard_string = "";
}
if keyboard_string = "1029" {
	pl_00.contrasena1 = 1;
}
if pl_00.contrasena1 = 1 {
instance_destroy(lector_contrasena1_1029);
}

