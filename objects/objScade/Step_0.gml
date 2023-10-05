move_wrap(true,false,objScade.sprite_width-10)

if y < landVal
	motion_set(-90,5);
else if GameLevel.gameEnd == false
{	
	if x < Object2.x+10
		motion_set(0,1.2);
	else if x > Object2.x-10
		motion_set(0,-1.2);
	else
		motion_set(0,0);

	if global.time % 1 <=0.02
	{
		instance_create_layer(x-8,y+30,"Enemy",objBulletEnemy);
		audio_play_sound(enemyFireMid,5,false)
	}
	if global.time % 1.5 <=0.02
	{
		instance_create_layer(x+8,y+30,"Enemy",objBulletEnemy);
		audio_play_sound(enemyFireMid,5,false)
	}
	
	if lifeVal == 0
	{
		instance_destroy();
		GameLevel.counter--;
		GameUI.s+=100;
		instance_create_layer(x,y,"Game",objExplMid)
		audio_play_sound(explMid,5,false)
	}
}