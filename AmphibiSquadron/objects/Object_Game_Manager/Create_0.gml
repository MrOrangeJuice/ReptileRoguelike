/// @description Insert description here
// You can write your code in this editor


gameState = game_state.Turn;

//manage whose turn is what during dungeons
turnOrder = ds_list_create();
currentTurnIndex = 0;

turnMaster = Object_Turn_Master.id;
