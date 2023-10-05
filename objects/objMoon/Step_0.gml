if y < landVal
	motion_set(-90,0.4);
else if GameLevel.gameEnd == false
{
	t++;
	l++;

	//laser cue - actions stop when firing
	if s = 0
	{
		//moon movevent
		moveVal+=0.2;	
		if moveVal < 20
			motion_set(0,0.2);
		else if moveVal > 20 && moveVal < 60
			motion_set(0,-0.2);
		else if moveVal > 60
			motion_set(0,0.2);
		if moveVal > 79.99
			moveVal = 0;
		//moon combat
		if t > bulSpeed && f = 0
	{
		instance_create_layer(x+130,y+130,"Enemy",objBulletEnemyTr);
		audio_play_sound(enemyFireLarg,5,false)
		f=1;
		t=0;
	}
		if t > bulSpeed && f = 1
	{
		instance_create_layer(x-130,y+130,"Enemy",objBulletEnemyTr);
		audio_play_sound(enemyFireLarg,5,false)
		f=0;
		t=0;
	}
	}
	else
	{
		motion_set(0,0)
		instance_create_layer(x,y+106,"Enemy",objLaser)
		objLaser.h = 1;
		objLaser.image_speed = 0
		objLaser.image_index = 1
		if t > lasVal
			objLaser.image_index = 0
		if t > lasVal+1
		{
			objLaser.h = 0
			audio_play_sound(laserFire,10,false,0.50)
		}
			
		if t > lasVal*3
		{
			l = 0;
			t = 0;
			s = 0;
		}
	}
	if l > 500
	{
		audio_play_sound(laserCharge,10,false)
		s = 1
		l = 0
		t = 0
	}
	if lifeVal < 0
	{
		GameUI.s+=1000;
		GameLevel.counter--;
		instance_destroy()
		instance_create_layer(x,y,"Game",objExplLarg)
		audio_play_sound(explLarg,5,false)
	}
}


