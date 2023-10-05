draw_set_halign(fa_center);
draw_set_font(global.font);
if tutorialDone = false && GameMenu.mode != 4
	draw_text(50,447,"PRESS [E] TO ACCEPT");
if tutorialDone = false && GameMenu.mode = 4
{
	switch (i)
	{
			case 0:
				if playerMade = true
				{
					draw_text(50,mainmenu_y,messages[i]);
					t++
					if t > 150
					{
						i++;
						t=0;
					}
				}
			break;
		
			case 1:
				draw_text(center_x,center_y,messages[i]);
				t++;
				if t > 300
				{
					i++;
					t=0;
				}
				break;
			case 2:
				draw_text(center_x,center_y,messages[i]);
				t++;
				if t > 300
				{
					i++;
					t=0;
				}
				break;
			case 3:
				healthMade = true;
				draw_text(x+100,y+469,messages[i]);
				t++;
				if t > 300
				{
					i++;
					t=0;
				}
				break;
			case 4:
				scoreMade = true;
				draw_text(x+100,y+5,messages[i]);
				t++;
				if t > 300
				{
					i++;
					t=0;
				}
				break;
			case 5:
				draw_text(mainmenu_x,center_y,messages[i]);
				if enemyMade = false
				{
					instance_create_layer(158,31,"Player",objWisp);
					enemyMade = true;
				}
				if s > 0
					i++;
				break;
			case 6:
				t++
				if t > 120
					draw_text(center_x,center_y,messages[i]);
				if t > 240
				{
					t=0;
					i++;
				}
			case 7:
				instance_destroy(Object2);
				draw_text(center_x,center_y,messages[i]);
				t++
				if t > 300
				{
					t = 0;
					i++
				}
			case 8:
				draw_text(center_x,center_y,messages[i]);
				t++
				if t > 300
				{
					t = 0;
					i++
					GameMenu.mode = 5;
					tutorialDone = true;
					room_goto(gamePlay);
				}
	}
}
if healthMade = true && GameMenu.mode = 4 && i < 7
	draw_text(x+20,y+469, lifeCheck);
if scoreMade = true && GameMenu.mode = 4 && i < 7
	draw_text(x+20,y+5, gameScore);

