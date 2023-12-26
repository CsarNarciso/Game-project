/////////linterna//////////
image_angle = pl_00.image_angle;
depth = -998;
x = pl_00.x;
y = pl_00.y;



if image_alpha >= 1 {
	CICLO = 1;
}
if CICLO = 1 {
	if image_alpha >= 0.90  {
image_alpha -= 0.00001;	
	}
		if image_alpha < 0.90  {
image_alpha -= 0.00025;	
	}
}


if image_alpha <= 0 {
	Dia += 1;
	CICLO = 0;
}
if CICLO = 0 {
image_alpha += 0.00025;	
}





//Control de Direccion correcta de la linterna

/*if Control_RotDeEspalda.NO_ACCIONAR_DE_ESPALDA = false {
	if Control_RotDeLado_Isq.NO_ACCIONAR_DE_LADO_ISQ = false {
if Control_RotDeLado_Der.NO_ACCIONAR_DE_LADO_DER = false {
image_angle = point_direction(x,y,mouse_x,mouse_y);
}
}
}*/


