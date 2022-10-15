/// @description Insert description here
// You can write your code in this editor


//add ourselves to the turn order, but after the player
ds_list_insert(Object_Game_Manager.turnOrder, 1, self.id);

event_inherited();

