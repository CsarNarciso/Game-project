
image_alpha = 0;
depth = -1000;





if pl_00.rotacion_dir = 0 {
	image_angle = 270;
x = pl_00.x;
y = pl_00.y +2575;
}

if pl_00.rotacion_dir = 180 {
	image_angle = 90;
x = pl_00.x;
y = pl_00.y -2575;
}

if pl_00.rotacion_dir = 90 {
	image_angle = 0;
x = pl_00.x +2575;
y = pl_00.y;
}

if pl_00.rotacion_dir = 270 {
	image_angle = 180;
x = pl_00.x -2575;
y = pl_00.y;
}





if distance_to_point(mouse_x,mouse_y) < 2 {
NO_ACCIONAR_DE_LADO_DER = true;	
}
if distance_to_point(mouse_x,mouse_y) > 2 {
NO_ACCIONAR_DE_LADO_DER = false;	
}

