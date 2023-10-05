draw_self()
if death == 1
{
	instance_destroy();
	instance_create_layer(x,y,"Game",objExplSm)
	//KillPoint(x+sprite_width,y,"+10")
	//draw_text(x+sprite_width,y,"+10")
	
}
if death == 2
{
	instance_destroy();
	instance_create_layer(x,y,"Game",objExplSm)
	//KillPoint(x+sprite_width,y,"+20")
	//draw_text(x+sprite_width,y,"+20")
}
