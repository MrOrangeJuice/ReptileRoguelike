/// @description Insert description here
// You can write your code in this editor



if(Object_Game_Manager.gameState == game_state.Dungeon)
{
	
	
	if(keyboard_check_pressed(ord("A")))
	{
		if(!instance_position(x-16,y,Object_Wall))
		{
			x -= 16;
		}
		
	}
	if(keyboard_check_pressed(ord("D")))
	{
		if(!instance_position(x+16,y,Object_Wall))
		{
			x += 16;
		}
	}
	if(keyboard_check_pressed(ord("W")))
	{
		if(!instance_position(x,y-16,Object_Wall))
		{
			y -= 16;
		}
		
	}
	if(keyboard_check_pressed(ord("S")))
	{
		if(!instance_position(x,y+16,Object_Wall))
		{
			y += 16;
		}
	}
}
