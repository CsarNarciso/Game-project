depth = -1;

// EFECTO DE SANGRE AL SER DAÑADO/MORDIDO
if pl_00.poder_danar_pl00 = 0 {
	draw_sprite(efecto_ataque_pl00,0,pl_00.x,pl_00.y);
}

// SISTEMA DE INVENTARIO
if pl_00.Abrir_INVENTARIO = true {
draw_sprite(Inventario,0,pl_00.x,pl_00.y);

draw_set_color(c_white) {
draw_text(pl_00.x-190,pl_00.y+80, string("EQUIPADO"));
draw_text(pl_00.x-190,pl_00.y-200, string("INVENTARIO"));
}
///estadisticas de municion y armas
//wep00
	if pl_00.pistola = 1 {
	draw_set_color(c_white); {
		draw_text(pl_00.x-190,pl_00.y-180, string("Pistola 9mm"));
	}
if pl_00.Arma = 1 {
draw_set_color(c_white);
draw_text(pl_00.x-190,pl_00.y+125, string("pistola 9mm"));
draw_text(pl_00.x-190,pl_00.y+100,string(pl_00.ammo) + " / " + string(pl_00.extra_ammo));
}
	}
//wep01
if pl_00.Escopeta = 1 {
	draw_set_color(c_white); {
		draw_text(pl_00.x-190,pl_00.y-160, string("Escopeta"));
	}
	if pl_00.Arma = 2 {
draw_set_color(c_white);
draw_text(pl_00.x-190,pl_00.y+125, string("Escopeta"));
draw_text(pl_00.x-190,pl_00.y+100,string(pl_00.ammo01) + " / " + string(pl_00.extra_ammo01));
}
 }
//wep02
	if pl_00.fusilAsalto = 1 {
	draw_set_color(c_white); {
		draw_sprite(FdA_M16,0,pl_00.x-190,pl_00.y-140);
		//draw_text(pl_00.x-190,pl_00.y-140, string("Fusil de asalto"));
	}
if pl_00.Arma = 3 {
draw_set_color(c_white);
draw_text(pl_00.x-190,pl_00.y+125, string("Fusil de asalto"));
draw_text(pl_00.x-190,pl_00.y+100,string(pl_00.ammo02) + " / " + string(pl_00.extra_ammo02));
}
 }
 
 //PUERTAS
 //llave de sala de espera
if pl_00.LLave_sala_espera = 1 {
draw_set_color(c_white) {
draw_text(pl_00.x-190,pl_00.y-140, string("Llave sala.espera"));
}
}


}

else {
draw_text(pl_00.x-190,pl_00.y+150,"mochila");
}
