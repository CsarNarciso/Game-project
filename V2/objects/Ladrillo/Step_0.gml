depth = 0;

// control de destruccion y distancia perfecta con un enemigo

if distance_to_object(cabeza_em00) < 1 {
	alarm[0] = 1	
}

// control de destruccion con objeto solido

if distance_to_object(pared1_Der_Isq) < 1 {
	alarm[0] = 1	
}

if pl_00.DEJARdeSegir_ladrillo = 0 {
instance_destroy(other);	
}