/// @description Insert description here
// You can write your code in this editor

//if it is our turn currently variable
turn = false;

facing = face_direction.Up

show_message("Hold shift to face without moving; WASD");

//add ourselves to the turn order, but at the start
ds_list_insert(Object_Game_Manager.turnOrder, 0, self.id);
