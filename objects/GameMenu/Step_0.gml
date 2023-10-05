upKey = keyboard_check_pressed(ord("W"));
downKey = keyboard_check_pressed(ord("S"));
acceptKey = keyboard_check_pressed(ord("E"));


position += downKey - upKey;

if position >= menuLength
	position = 0;
	
if position < 0
	position = menuLength-1;
	
for(var i = 0,textY = 0; i < menuLength; i++)
{
	if position = i && blockMake = false && mode != 5
	{
		instance_create_layer(89,194+textY,"Icons",objBlock);
		blockMake = true;
	}
	textY+=50;
}
if downKey || upKey
{
	instance_destroy(objBlock);
	blockMake = false;
}

if acceptKey
{
	switch (mode)
	{
		//Menu Mode
		case 0:
			switch (position)
			{
				//Start Game
				case 0:
					if GameTutorial.tutorialDone = false
					{
					mode = 4;
					room_goto(gameSettings);
					}
					else
					{
						mode = 5;
						room_goto(gamePlay);
					}
				break;
				//Settings
				case 1:
					room_goto(gameSettings);
					mode = 1;
				break;
				//End Game
				case 2:
					game_end();
			}
		break;
		//Settings Mode
		case 1:
			switch (position)
			{
				//Controls
				case 0:
				break;
				//Brightness
				case 1:
				break;
				//Sound Controls
				case 2:
				break;
				//Return
				case 3:
					room_goto(gameMenuStart);
					mode = 0;
				break;
			}
		break;
	}
}