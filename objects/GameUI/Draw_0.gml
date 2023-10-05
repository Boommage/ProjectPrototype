//draw_text(center_x,center_y,GameLevel.gameEnd) //tester text
if gameStart == true
{
	if GameLevel.alarm[1] > 180 && paused == 0
	{
		draw_set_font(global.font)
		draw_set_halign(fa_center)
		draw_text_transformed(center_x,center_y,round(GameLevel.alarm[1]/60)-2,6,6,0)
	}
	else if GameLevel.alarm[1] > -1 && paused == 0
	{
		draw_set_halign(fa_center)
		draw_set_font(global.font)
		draw_text_transformed(center_x,center_y,"GO!!!",6,6,0)
	}
	else if store < 0
		gameStart = false
}

if GameLevel.gameEnd == true
{
	if t > 60
	{
		draw_set_font(global.font)
		instance_deactivate_layer("Enemy");
		draw_set_halign(fa_center)
		draw_text_transformed(center_x,center_y,"GAME OVER",3,3,0)
		draw_text(tryagain_x,tryagain_y,"TRY AGAIN")
		//instance_create_layer(tryagain_x,tryagain_y+10,"Player",objClicker)
		draw_text(mainmenu_x,mainmenu_y,"MAIN MENU")
		if t > 1200
			draw_text(50,447,"PRESS [E] TO ACCEPT");
	}
}
if GameLevel.gameEnd == false
{
	if keyboard_check_pressed(vk_escape)
	{
		paused+=1
		audio_play_sound(pause,10,false)
	}
		if paused == 1
		{
			instance_deactivate_layer("Enemy");
			instance_deactivate_layer("Player");
			GameLevel.alarm[1] = -1
			draw_set_font(global.font)
			draw_set_halign(fa_center)
			draw_text_transformed(center_x,center_y,"PAUSED",3,3,0)
			draw_text(tryagain_x,tryagain_y,"RESTART")
			draw_text(mainmenu_x,mainmenu_y,"MAIN MENU")
			//instance_create_layer(center_x,tryagain_y,"Player",objClicker)
		}
		if paused == 2
		{
			instance_activate_layer("Enemy");
			instance_activate_layer("Player");
			//instance_destroy(objClicker)
			GameLevel.alarm[1] = store
			paused = 0;
			audio_play_sound(pause2,10,false)
		}
	draw_set_halign(fa_left);
	draw_set_font(global.font)
	draw_text(x,y+469, lifeCheck)
}
draw_set_halign(fa_left);
draw_set_font(global.font)
draw_text(x,y+5, gameScore)
