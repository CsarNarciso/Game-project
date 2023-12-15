sprite_index = llave_00;

//distancia de visibilidad de objeto al interactuar o no con el/////////

// ocultar objeto
if distance_to_object(pl_00) > 2 {
	depth = 3
	image_alpha = 1
}
// aparecer objeto
if distance_to_object(pl_00) < 2 {
	depth = 1
	image_alpha = 0.5
}

