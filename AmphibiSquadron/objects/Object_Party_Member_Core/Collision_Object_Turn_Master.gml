/// @description Insert description here
// You can write your code in this editor

event_inherited();

show_message("Party_Member Turn");

//determine course of action
whatToDo = Determine_Party_Action(self.id);

show_message(whatToDo)

//do the course of Action
switch(whatToDo)
{
	case(partyActions.Move):
		moveToPlayer(self.id);
	break;
	
	case(partyActions.Attack):
		//to be implemented
		show_message("Psychic Attack!");
	break;
}

Object_Game_Manager.gameState = game_state.NextTurn;


