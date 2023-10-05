instance_destroy();
GameLevel.counter--;
Object2.lifeVal--;
instance_create_layer(x,y,"Game",objExplHel)
audio_play_sound(playerHit,5,false)
