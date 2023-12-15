/// @description sanar vida de personaje

/*var comprobacion2 = salud_maxima - salud;

if (salud_extra >= comprobacion2) {
salud = salud_maxima;
salud_extra -= comprobacion2;
}
else {
salud += salud_extra;
salud_extra = 0;
}
*/

if salud <= 4 {
salud_extra -= 1;
salud += 2;
}

if salud =  5  {
salud_extra -= 1;
salud += 1;
}

if salud = 6 {
salud_extra -= 0;
salud += 0;
}

