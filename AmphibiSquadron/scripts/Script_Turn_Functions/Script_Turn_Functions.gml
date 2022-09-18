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

//check to make sure a move is valid for an entity before it moves
function checkMove(mover, xTarget, yTarget){
	//walls are no move
	if(place_meeting(xTarget,yTarget,Object_Wall))
	{	
		return moveCheckResult.Bad;
	}
	//enemies are no move
	else if(place_meeting(xTarget,yTarget,Object_Enemy))
	{	
		return moveCheckResult.Bad;
	}
	//allies are swap
	else if(place_meeting(xTarget,yTarget,Object_Party_Member))
	{	
		return moveCheckResult.Swap;
	}
	else
	{
		return moveCheckResult.Good;
	}
	
	//unknown? bad.
	return moveCheckResult.Bad;
}