/// @description Insert description here
// You can write your code in this editor

/// @description Insert description here
// You can write your code in this editor

//attempt to not double call the turn
event_inherited();

//what keys is the player pressing?
keyLeft = keyboard_check_direct(ord("A"));
keyRight = keyboard_check_direct(ord("D"));
keyUp = keyboard_check_direct(ord("W"));
keyDown = keyboard_check_direct(ord("S"));


//what direction are we looking
leftRight = (keyLeft * 3) - (keyRight * 4);
upDown = (keyDown) - (keyUp * 5);

finalDirection = leftRight + upDown;

xTarget = x;
yTarget = y;

canMove = noone;

//math bangs out to 8 results
//left = 3
//right = -4
//up = -5
//down = 1
//up left = -2
//up right = -9
//down left = 4
//down right = -3
// the enum direction "movement_direction" matches these values for readability


//move in direction pressed after facing it, up down left or right, diagonals,
	// and dont move if holding shift, just look
switch(finalDirection){
	
	case(movementDirection.Left):
		facing = face_direction.Left;
		//if ever holding shift, don't do the move
		if(!instance_position(x-16,y,Object_Wall) && !keyboard_check_direct(vk_shift))
		{
			xTarget -= 16;
			Object_Game_Manager.gameState = game_state.NextTurn;
		}
		break;
		
	case(movementDirection.Right):
		facing = face_direction.Right;
		if(!instance_position(x+16,y,Object_Wall) && !keyboard_check_direct(vk_shift))
		{
			xTarget += 16;
			Object_Game_Manager.gameState = game_state.NextTurn;
		}
		break;	
		
		case(movementDirection.Up):
		facing = face_direction.Up;
		if(!instance_position(x,y-16,Object_Wall) && !keyboard_check_direct(vk_shift))
		{
			yTarget -= 16;
			Object_Game_Manager.gameState = game_state.NextTurn;
		}
		break;
		
		case(movementDirection.Down):
		facing = face_direction.Down;
		if(!instance_position(x,y+16,Object_Wall) && !keyboard_check_direct(vk_shift))
		{
			yTarget += 16;
			Object_Game_Manager.gameState = game_state.NextTurn;
		}
		break;
		
		//diagonals time
		case(movementDirection.upLeft):
		facing = face_direction.UpLeft;
		if(!instance_position(x-16,y-16,Object_Wall) && !keyboard_check_direct(vk_shift))
		{
			xTarget -= 16;
			yTarget -= 16;
			Object_Game_Manager.gameState = game_state.NextTurn;
		}
		break;
		
		case(movementDirection.upRight):
		facing = face_direction.UpRight;
		if(!instance_position(x+16,y-16,Object_Wall) && !keyboard_check_direct(vk_shift))
		{
			xTarget += 16;
			yTarget -= 16;
			Object_Game_Manager.gameState = game_state.NextTurn;
		}
		break;
		
		case(movementDirection.downLeft):
		facing = face_direction.DownLeft;
		if(!instance_position(x-16,y+16,Object_Wall) && !keyboard_check_direct(vk_shift))
		{
			xTarget -= 16;
			yTarget += 16;
			Object_Game_Manager.gameState = game_state.NextTurn;
		}
		break;
		
		case(movementDirection.downRight):
		facing = face_direction.DownRight;
		if(!instance_position(x+16,y+16,Object_Wall) && !keyboard_check_direct(vk_shift))
		{
			xTarget += 16;
			yTarget += 16;
			Object_Game_Manager.gameState = game_state.NextTurn;
		}
		break;
}

	//check to see if we can move to where we want, if moving
	if(xTarget != x || yTarget != y)
	{
		canMove = checkMove(self.id,xTarget,yTarget);
	}
	
	
	switch(canMove)
	{
		case(moveCheckResult.Bad):
			//move is not allowed, do not take turn 
			xTarget = x;
			yTarget = y;
			Object_Game_Manager.gameState = game_state.Turn;
			break;
			
		case(moveCheckResult.Good):
			//move is  allowed, take turn
			x = xTarget;
			y = yTarget;
			break;
			
		case(moveCheckResult.Swap):
			//move is  allowed, but have to swap places with ally
			
			//move ally
			ally = instance_place(xTarget,yTarget,Object_Party_Member_Core);
			ally.x = x;
			ally.y = y;
			
			x = xTarget;
			y = yTarget;
			break;
			
		//if we didn't move
		default:
			//it would still be our turn
			Object_Game_Manager.gameState = game_state.Turn;
			break;
		
	}

	
	//animate the player to face the direction,
		//make sure weapon is on correct side
	switch(facing){
		case(face_direction.Up):
			Object_Player_Main_Visual.sprite_index = CrocodileBack;
			Object_Player_Weapon_Visual.depth = 201;
			break;
		case(face_direction.Down):
			Object_Player_Main_Visual.sprite_index = CrocodileFront;
			Object_Player_Weapon_Visual.depth = 199;
			break;
		case(face_direction.Right):
			Object_Player_Main_Visual.sprite_index = sCrocodileGreen;
			Object_Player_Weapon_Visual.depth = 199;
			break;
		case(face_direction.Left):
			Object_Player_Main_Visual.sprite_index = sCrocodileGreenFlipped;
			Object_Player_Weapon_Visual.depth = 199;
			break;
		
	}
	
	