
//player movement
if keyboard_check(ord("D")) && keyboard_check(ord("W"))
{
	motion_set(45,5)
}
else if keyboard_check(ord("S")) && keyboard_check(ord("D"))
{
	motion_set(-45,5)
}
else if keyboard_check(ord("A")) && keyboard_check(ord("W"))
{
	motion_set(135,5)
}
else if keyboard_check(ord("A")) && keyboard_check(ord("S"))
{
	motion_set(-135,5)
}
else if keyboard_check(ord("W"))
{
	motion_set(90,5);
}
else if keyboard_check(ord("S"))
{
	motion_set(90,-5);
}
else if keyboard_check(ord("A"))
{
	motion_set(0,-5);
}
else if keyboard_check(ord("D"))
{
	motion_set(0,5);
}
else
{
	motion_set(0,0);
}

//Player combat
if mouse_check_button_pressed(mb_left)
{
	instance_create_layer(x,y-20,"Player",objBullet);
	audio_play_sound(playerFire,5,false)
}
if keyboard_check_pressed(vk_enter)
{
	instance_create_layer(x,y-20,"Player",objBullet);
	audio_play_sound(playerFire,5,false)
}

//player life
if lifeVal == 0 && GameMenu.mode != 4
{
	audio_play_sound(explMid,10,false,,,1)
	audio_play_sound(playerDeath,10,false,1000)
	GameLevel.gameEnd = true
	instance_destroy();
	instance_create_layer(x,y,"Game",objExplMid)
}
if GameMenu.mode != 4 && GameLevel.r == array_length(GameLevel.enemy[0][0]) - 1
{
	if y < 94
	{
		instance_create_layer(x,y,"Game",objExplHel)
		audio_play_sound(playerHit,5,false)
		lifeVal--
	}
}
if GameMenu.mode = 4
	GameTutorial.lifeCheck = "LIFE: "+string(lifeVal)
else
	GameUI.lifeCheck = "LIFE: "+string(lifeVal)