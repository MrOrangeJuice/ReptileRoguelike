// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Script_Party_Functions(){

}

//party members use this funcition to decide what to do
function Determine_Party_Action(member){
	
	//2 main people to worry about when deciding
	player = Object_Player.id;
	nearestEnemy = instance_nearest(x,y,Object_Enemy);
	
	//distance in tiles
	xDifferencePlayer = (member.x - player.x) / 16;
	yDifferencePlayer = (member.y - player.y) / 16;
	
	if(true)
	{
		return partyActions.Move;	
	}
}