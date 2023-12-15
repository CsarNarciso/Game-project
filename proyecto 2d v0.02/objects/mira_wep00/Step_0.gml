depth = -999;
image_xscale =1;
image_yscale =1;
//x = mouse_x;
//y = mouse_y;

if distance_to_object(em_00) < 1{

EnMira_Em00 = 1;	

}

if distance_to_object(cabeza_em00) < 1 {

EnMira_CabezaEm00 = 1;	
}


if distance_to_object(em_00) > 1 {
EnMira_Em00 = 0;
}

if distance_to_object(cabeza_em00) > 1{
EnMira_CabezaEm00 = 0;
}

//if keyboard_check_pressed(ord("F")) {
if keyboard_check_pressed(vk_shift) {
	
	
	if pl_00.rotacion_dir = 0 {
x = pl_00.x + 40;
y = pl_00.y;
}
if pl_00.rotacion_dir = 180 {
x = pl_00.x - 40;
y = pl_00.y;
}
if pl_00.rotacion_dir = 90 {
x = pl_00.x;
y = pl_00.y - 40;
}
if pl_00.rotacion_dir = 270 {
x = pl_00.x;
y = pl_00.y + 40;
}


}

//if keyboard_check_direct(ord("F")) {
if keyboard_check_direct(vk_shift) {

image_alpha = 1;



//if keyboard_check_direct(vk_right) {
if keyboard_check_direct(ord("D")) {
x += 5;
}
//if keyboard_check_direct(vk_left) {
if keyboard_check_direct(ord("A")) {
x -= 5;
}
//if keyboard_check_direct(vk_up) {
if keyboard_check_direct(ord("W")) {
y -= 5;
}
//if keyboard_check_direct(vk_down) {
if keyboard_check_direct(ord("S")) {
y += 5;
}
}

/*if keyboard_check_direct(ord("F")) {

if keyboard_check_pressed(ord("D")) {
x = pl_00.x + 40;
y = pl_00.y;
}
if keyboard_check_pressed(ord("A")) {
x = pl_00.x - 40;
y = pl_00.y;
}
if keyboard_check_pressed(ord("W")) {
x = pl_00.x;
y = pl_00.y - 40;
}
if keyboard_check_pressed(ord("S")) {
x = pl_00.x;
y = pl_00.y + 40;
}

}
*/








//if pl_00.Arma = 0 {
//	image_alpha = 1;
	
//}




/*
								          
if pl_00.Arma = 1 {
	//image_alpha = 1;
	
	if pl_00.disparando_wep00_fuego = 1 {
v_mira = 4;	
}
if pl_00.disparando_wep00_fuego = 0 {
v_mira = 0.5;	
}

rot_dir_mira += 6;
if distance_to_object(pl_00) > 50 {
	direction = rot_dir_mira;
	speed = v_mira;
}
if distance_to_object(pl_00) < 50 {
	direction = rot_dir_mira;
	speed = 0;
	v_mira = 0;
}
}
if rot_dir_mira >= 360 {
rot_dir_mira = 0;	
}



//if keyboard_check_released(ord("F")) {
if keyboard_check_released(vk_shift) {
	image_alpha = 0;
}



/*


if pl_00.Arma = 2 {
	image_alpha = 0.1;
	
	if pl_00.disparando_wep01_fuego = 1 {
v_mira = 15;	
}
if pl_00.disparando_wep01_fuego = 0 {
v_mira = 10;	
}
rot_dir_mira += 5;
			direction = rot_dir_mira;
		}	






if pl_00.Arma = 3 {
	if pl_00.disparando_wep02_fuego = 1 {
		if image_alpha > 0 {
		image_alpha -= 0.03;
		}
		v_mira += 0.2;
		if image_xscale < 10 {
	image_xscale = v_mira;
	}
	if image_yscale < 10 {
	image_yscale = v_mira;
	}
}
if pl_00.disparando_wep02_fuego = 0 {
	if image_alpha < 1 {
		image_alpha += 0.1;
		}
	if image_xscale > 0.5 {
	image_xscale -= 0.2;
	}
	if image_yscale > 0.5 {
	image_yscale -= 0.2;
	}
v_mira = 1;	
}
rot_dir_mira += 20;
	direction = rot_dir_mira;
}*/


	
	

/////////animacion de mirilla al cambiar arma y apuntar a enemigo/////////


//MACHETE
if pl_00.Arma = 0 {
sprite_index = mira_ConMachete;
}
// PISTOLA 9MM
if pl_00.Arma = 1 {
sprite_index = mira_pistola;
	}
	// ESCOPETA
if pl_00.Arma = 2 {
sprite_index = mira_escopeta;
}
	// M16
if pl_00.Arma = 3 {
sprite_index = mira_pistola;
	}
	// LADRILLO
if pl_00.Arma = 4 {
sprite_index = Ladrillo1;
	}
	
	

