/// @description recargar arma

RECARGANDO = false;

//wep00
	if mouse_check_button_pressed(mb_left) {
	No_RECARGAR = true;
	}
else {
if Arma = 1 {
var comprobacion = ammo_max - ammo;

if (extra_ammo >= comprobacion) {
ammo = ammo_max;
extra_ammo -= comprobacion;
}
else {
ammo += extra_ammo;
extra_ammo = 0;
}
}

}

//wep01
if mouse_check_button_pressed(mb_left) {
	No_RECARGAR = true;
	}
	else {
if Arma = 2 {
var comprobacion = ammo01_max - ammo01;

if (extra_ammo01 >= comprobacion) {
ammo01 = ammo01_max;
extra_ammo01 -= comprobacion;
}
else {
ammo01 += extra_ammo01;
extra_ammo01 = 0;
}
}
	}



//wep02
	if mouse_check_button_pressed(mb_left) {
	No_RECARGAR = true;	
	}
else {
if Arma = 3 {
var comprobacion = ammo02_max - ammo02;

if (extra_ammo02 >= comprobacion) {
ammo02 = ammo02_max;
extra_ammo02 -= comprobacion;
}
else {
ammo02 += extra_ammo02;
extra_ammo02 = 0;
}
}

}
