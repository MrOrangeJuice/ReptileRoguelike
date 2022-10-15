// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Script_Party_Functions(){

}

//party members use this funcition to decide what to do
function Determine_Party_Action(member){
	
	//2 main people to worry about when deciding
	player = Object_Player_Core.id;
	nearestEnemy = instance_nearest(x,y,Object_Enemy_Core);
	
	//distance in tiles
	xDifferencePlayer = (player.x - member.x) / 16;
	yDifferencePlayer = (player.y - member.y) / 16;
	
	xDifferenceNearestEnemy = (nearestEnemy.x - member.x) / 16;
	yDifferenceNearestEnemy = (nearestEnemy.y - member.y) / 16;
	
	
	
	//if an enemy is adjacent to us in row or column
	if(abs(xDifferenceNearestEnemy) == 1 || abs(yDifferenceNearestEnemy) == 1)
	{
		//if the enemy is not adjacent in the other (row or column)
		if(abs(xDifferenceNearestEnemy) > 1 || abs(yDifferenceNearestEnemy) > 1)
		{
			//enemy is too far, not adjacent
		}
		else
		{
			//enemy is indeed adjacent
			return partyActions.Attack;	
		}
	}
	
	//if not adjacent to an enemy, see if we move
	//for now, we move if the player is within 3 tiles but not adjacent
	
	//if player is not adjacent
	if((abs(xDifferencePlayer) > 1) || (abs(yDifferencePlayer) > 1))
	{
		//if player is not greater than 3 tiles away
		if((abs(xDifferencePlayer) > 3) || (abs(yDifferencePlayer) > 3))
		{
			return partyActions.Idle;
		}
		else
		{
			//if we are not adjacent to enemies, and we are too far from the player
			return partyActions.Move;
		}
		
	}
	
	//if we are adjavent to the player but not an enemy, don't move
	return partyActions.Idle;
	
}


function moveToPlayer(member){
	//get where the player is
	player = Object_Player_Core.id;
	
	//distance in tiles
	xDifferencePlayer = (player.x - member.x) / 16;
	yDifferencePlayer = (player.y - member.y) / 16;
	
	//move towards the player
	
	member.x += sign(xDifferencePlayer) * 16;
	member.y += sign(yDifferencePlayer) * 16;
}