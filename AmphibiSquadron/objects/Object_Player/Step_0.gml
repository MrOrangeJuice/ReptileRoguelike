/// @description Insert description here
// You can write your code in this editor



if(Object_Game_Manager.gameState == game_state.Dungeon)
{
	
	
	if(keyboard_check_pressed(ord("A")))
	{
		facing = face_direction.Left;
		if(!instance_position(x-16,y,Object_Wall) && !keyboard_check(vk_shift))
		{
			x -= 16;
		}
		
	}
	if(keyboard_check_pressed(ord("D")))
	{
		facing = face_direction.Right;
		if(!instance_position(x+16,y,Object_Wall) && !keyboard_check(vk_shift))
		{
			x += 16;
		}
	}
	if(keyboard_check_pressed(ord("W")))
	{
		facing = face_direction.Up;
		if(!instance_position(x,y-16,Object_Wall) && !keyboard_check(vk_shift))
		{
			y -= 16;
		}
		
	}
	if(keyboard_check_pressed(ord("S")))
	{
		facing = face_direction.Down;
		if(!instance_position(x,y+16,Object_Wall) && !keyboard_check(vk_shift))
		{
			y += 16;
		}
	}
	
	/*
	switch(facing)
	{
		case(face_direction.Up):
			Sprite_Player.image_index = 0;
		break;
		case(face_direction.Right):
			Sprite_Player.image_index = 1;
		break;
	} */
	Object_Player.image_index = facing;
}
