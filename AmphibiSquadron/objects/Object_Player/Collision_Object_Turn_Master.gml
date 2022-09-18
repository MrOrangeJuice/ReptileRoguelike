/// @description Insert description here
// You can write your code in this editor

/// @description Insert description here
// You can write your code in this editor

//attempt to not double call the turn
undoubleTurn();

//what keys is the player pressing?
keyLeft = keyboard_check_pressed(ord("A"));
keyRight = keyboard_check_pressed(ord("D"));
keyUp = keyboard_check_pressed(ord("W"));
keyDown = keyboard_check_pressed(ord("D"));
keyLook = keyboard_check_pressed(ord(vk_shift));

leftRight = keyLeft - KeyRight;
upDown = keyDown - keyUp;



	//move in direction pressed after facing it, up down left or right, diagonals,
	// and dont move if holding shift, just look
	if(keyLeft)
	{
		
		facing = face_direction.Left;
		//if ever holding shift, don't do the move
		if(!instance_position(x-16,y,Object_Wall) && !keyboard_check(vk_shift))
		{
			x -= 16;
			Object_Game_Manager.gameState = game_state.NextTurn;
		}
		
	}
	if(keyboard_check_pressed(ord("D")))
	{
		facing = face_direction.Right;
		if(!instance_position(x+16,y,Object_Wall) && !keyboard_check(vk_shift))
		{
			x += 16;
			Object_Game_Manager.gameState = game_state.NextTurn;
		}
	}
	if(keyboard_check_pressed(ord("W")))
	{
		facing = face_direction.Up;
		if(!instance_position(x,y-16,Object_Wall) && !keyboard_check(vk_shift))
		{
			y -= 16;
			Object_Game_Manager.gameState = game_state.NextTurn;
		}
		
	}
	if(keyboard_check_pressed(ord("S")))
	{
		facing = face_direction.Down;
		if(!instance_position(x,y+16,Object_Wall) && !keyboard_check(vk_shift))
		{
			y += 16;
			Object_Game_Manager.gameState = game_state.NextTurn;
		}
	}
	
	//animate the player to face the direction
	Object_Player.image_index = facing;
	
	













