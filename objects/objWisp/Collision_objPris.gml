death = 2
alarm[0] = 0;
GameLevel.counter--;
GameUI.s+=20;
instance_destroy();
instance_create_layer(x,y,"Game",objExplSm)
audio_play_sound(explSmall,5,false)
