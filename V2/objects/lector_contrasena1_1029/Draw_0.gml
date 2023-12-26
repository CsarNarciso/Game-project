////////contraseñas////////
//LECTOR 1 Y CONTRASEÑA 1 
if distance_to_object(pl_00) < 2 {
 draw_set_color(c_white);
 draw_rectangle(x,y-50,x+64,y,false);
 draw_set_color(c_black);
 draw_text(x+5,y-50,keyboard_string);
}