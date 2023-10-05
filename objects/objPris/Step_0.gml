priTime+=0.01;
if t == 0
{
	if GameLevel.gameEnd == true
	{
		image_angle = 0;
		motion_set(0,0)
	}
	else if priTime > landVal
	{
			t = 1;
			priSpeed = 5;
	}
	else
		image_angle = point_direction(x, y, Object2.x, Object2.y) +90;
}
if t == 1
{
	move_wrap(true,true,sprite_width)
	if priTime > landVal+1.5
		t = 2;
}
if t == 2
{
	if y < -50 || y > 550 || x > 400 || x < -100
	{
		instance_destroy()
		GameLevel.counter--;
	}
}

motion_set(image_angle-90,priSpeed)