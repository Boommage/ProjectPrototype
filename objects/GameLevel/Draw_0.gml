//boss warning code **CHANGE FROM -1 to -2 WHEN REWARDS ARE MADE
if r == array_length(enemy[0][0]) - 1 && t < 720
{
	t++;
	if r == array_length(enemy[0][0]) - 1 && warn == 0
	{
		alarm[3] = 30
		warn = 1;
	}
	else if warn == 1 && alarm[3] > 0
	{
		draw_set_font(global.font)
		draw_set_halign(fa_center)
		draw_text_transformed(GameUI.center_x,GameUI.center_y,"!!!WARNING!!!",6,6,0)
	}
	else if warn == 1 && alarm[3] == -1
	{
		alarm[3] = 30
		warn = 2
	}
	else if warn == 2 && alarm[3] == -1
		warn = 0
}
//When the level is beaten
if levelEnd == true && alarm[2] == -1 && GameUI.paused == 0
{
	draw_set_halign(fa_center)
	draw_set_font(global.font)
	draw_text_transformed(GameUI.center_x,GameUI.center_y,"LEVEL COMPLETE",3,3,0)
	draw_text(GameUI.center_x,GameUI.mainmenu_y,"PRESS FIRE TO CONTINUE")
}
