// comment this code to play test

global.time = get_timer()/1000000;
//resets every value back to origin
if levelReset == true
{
	t = 0;
	r = -1;
	c = 0;
	warn = 0;
	levelEnd = false;
	counter = 0;
	gameEnd = false;
	alarm[1] = 420
	alarm[2] = -1
	alarm[3] = -1
	t = 0;
	GameUI.s = 0;
	GameUI.gameStart = true
	GameUI.store = 0;
	GameUI.lifeCheck = 0;
	GameUI.paused = 0
	layer_destroy_instances("Enemy")
	layer_destroy_instances("Player")
	instance_create_layer(playerX,playerY,"Player",Object2)
	levelReset = false;
}
//pre-game timer
if alarm[1] < 180 && GameUI.paused == 0
{
	//triggers the enemy creation for loop again but this time on the next round
	if counter == 0 && r < array_length(enemy[0][0]) - 1
	{
		alarm[0] = counter + 1
		r++;
		counter = 1;
		c=0;
	}
	//triggers when every round in the level is over
	if counter == 0 && r == array_length(enemy[0][0]) - 1
	{
		levelEnd = true
		alarm[2] = 120
		r++;
	}
}
