draw_set_font(global.font);
draw_set_valign(fa_top);
draw_set_halign(fa_center);

if mode = 0
{
	menuLength = optionLength;
	for(var i = 0,textY = 0; i <optionLength; i++)
	{
		draw_text(159,190+textY,options[i]);
		textY+=50;
	}
}
if mode = 1
{
	menuLength = settingsLength;
	for(var i = 0,textY = 0; i <settingsLength; i++)
	{
		draw_text(159,190+textY,settings[i]);
		textY+=50;
	}
}
if mode = 4
	menuLength = 0;


