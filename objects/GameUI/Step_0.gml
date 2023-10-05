
if GameLevel.gameEnd == true
	t++;
count++;
gameScore = "SCORE: "+string(s)
//Reduces the score every other second
if s > 0 && count % 60 = 0 && GameLevel.gameEnd == false && paused !=1
	s -= 1
if GameLevel.alarm[1] > 0
		store = GameLevel.alarm[1];

	
leftKey = keyboard_check_pressed(ord("A"));
rightKey = keyboard_check_pressed(ord("D"));
acceptKey = keyboard_check_pressed(ord("E"));


position += rightKey - leftKey;

if position > 1
	position = 0;	
if position < 0
	position = 1;
if (paused == 1  && blockMake == false) || (GameLevel.gameEnd == true && blockMake == false && t > 60)	
{
	switch (position)
	{
		case 0:
			instance_create_layer(tryagain_x-40,tryagain_y+5,"Icons",objBlock);
			blockMake = true;
		break;
		case 1:
			instance_create_layer(mainmenu_x-40,mainmenu_y+5,"Icons",objBlock);
			blockMake = true;
		break;
	}
}
if ((leftKey || rightKey) && GameLevel.gameEnd == true) || ((leftKey || rightKey) && paused == 1) || (paused == 0 && GameLevel.gameEnd == false)
{
	instance_destroy(objBlock);
	blockMake = false;
}

if (acceptKey && paused == 1) || (acceptKey && GameLevel.gameEnd == true)
{
	switch (position)
	{
		case 0:
			GameLevel.levelReset = true;
		break;
		case 1:
			GameMenu.mode = 0;
			room_goto(gameMenuStart);
		break;
	}
}

