instance_destroy();
GameLevel.counter--;
GameUI.s+=40;
instance_create_layer(x,y,"Game",objExplSm)
audio_play_sound(playerHit,5,false,,,2)
