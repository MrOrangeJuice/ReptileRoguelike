// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Script_Turn_Functions(){

}

//stops us from having turns artificially repeat
function undoubleTurn(){
	//attempt to not double call the turn
		Object_Game_Manager.turnMaster.x = 0;
		Object_Game_Manager.turnMaster.y = 0;
}