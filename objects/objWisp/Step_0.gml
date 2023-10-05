move_wrap(true,false,enemyWisp.sprite_width+8);

if y < landVal
	motion_set(-90,5);
else
{
	t++;
	moveVal++;	
	if moveVal < 20
		motion_set(0,0.8);
	else if moveVal > 20 && moveVal < 60
		motion_set(0,-0.8);
	else if moveVal > 60
		motion_set(0,0.8);
	if moveVal > 79.99
		moveVal = 0;
	
	if t > random_range(90,120)
	{	
		instance_create_layer(x,y+10,"Enemy",objBulletEnemy);
		audio_play_sound(enemyFireSmall,5,false)
		t = 0;
	}
}



