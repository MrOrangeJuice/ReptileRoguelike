/// @description Insert description here
// You can write your code in this editor

event_inherited();

show_message("Party_Member Turn");

whatToDo = Determine_Party_Action(self.id);

Object_Game_Manager.gameState = game_state.NextTurn;


