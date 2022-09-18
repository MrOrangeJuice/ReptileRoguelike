/// @description Insert description here
// You can write your code in this editor

if(!window_has_focus())
{
	gameState = game_state.Pause;
}

//only run the right code for the current part of the game loop
switch(gameState){
	//we can start the next turn
	case(game_state.Turn):
		//we make turnMaster Collide with someone to make them take a turn
		turnMaster.x = turnOrder[| currentTurnIndex].x;
		turnMaster.y = turnOrder[| currentTurnIndex].y;
		
		break;
	case(game_state.NextTurn):
		//go to next turn
		currentTurnIndex++;
		if(currentTurnIndex >= ds_list_size(turnOrder))
		{
			//in case we need to loop to turn order start
			currentTurnIndex = 0;
		}
		gameState = game_state.Turn;
		break;
	case(game_state.Pause):
		if(window_has_focus())
		{
			gameState = game_state.Turn;
		}
		break;
}


