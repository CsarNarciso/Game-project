/// @description sanar vida de personaje

var comprobacion2 = salud_maxima - salud;

if (salud_extra >= comprobacion2) {
salud = salud_maxima;
salud_extra -= comprobacion2;
}
else {
salud += salud_extra;
salud_extra = 0;
}
