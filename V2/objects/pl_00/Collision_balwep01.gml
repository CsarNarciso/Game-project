//recojer municion
if (!audio_is_playing(cojer_municion)) {
audio_play_sound(cojer_municion,10,false);
}
extra_ammo01 += 15;
instance_destroy(other);
