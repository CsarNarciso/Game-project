/// @description recargar municion
//recargar arma
if sprite_index = personaje1_muerte {
ammo = 0
extra_ammo = 0
ammo01 = 0
extra_ammo01 = 0
ammo02 = 0
extra_ammo02 = 0
}
else {
	
if apuntar_caminar = 1 {
	//wep00
	if mouse_check_button(mb_left) {
	No_RECARGAR = true;	
	}
else {
	if Arma = 1 { 
if (ammo < ammo_max){
	if extra_ammo > 0 {
audio_play_sound(wep00_reload,10,false);
}
alarm[0] = 50;	
}
	}
}
	
   //wep01
if mouse_check_button(mb_left) {
 No_RECARGAR = true;	
}
else {

   if Arma = 2 {
if (ammo01 < ammo01_max){
	if extra_ammo01 > 0 {
		audio_play_sound(wep01_reload,10,false);
	}
alarm[0] = 150;	
}
}
}





   //wep02
   	if mouse_check_button(mb_left) {
	No_RECARGAR = true;	
	}
else {
   if Arma = 3 {
if (ammo02 < ammo02_max){
	if extra_ammo02 > 0 {
		audio_play_sound(wep02_reload,10,false);
	}
alarm[0] = 150;	
}
}


}
}


}