// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

enum game_state {
	//a menu is open
	Menu,
	
	//someone is taking a turn
	Turn,
	
	//it is okay to go to the next turn
	NextTurn,
	
	//game is pause
	Pause,
	
	//mainMenu
	MainMenu,
	
	//in case we need it for a screen transition
	Transition
}

//used to animate sprites
//the numbers match a math section of code in the player core & its sprite, if you
	//want to reference why they seem arbitray (they kinda are)
		//this one is currently a bit deprecated cause of new sprites
enum face_direction {
	Up = 0,
	Down = 2,
	Left = 3,
	Right = 1,
	UpLeft = 4,
	UpRight = 5,
	DownLeft = 6,
	DownRight = 7
}

//used for player movement
	//again, arbitrary to some math, in player core
enum movementDirection {
Left = 3,
Right = -4,
Up = -5,
Down = 1,
upLeft = -2,
upRight = -9,
downLeft = 4,
downRight = -3
	
}

//used when party members take a turn
enum partyActions{
	Move = 0,
	Attack = 1,
	Idle = 2
}

enum moveCheckResult{
	Good = 0,
	Bad = 1,
	Swap = 2
}

enum elementalType{
	Fire = 0,
	Ice = 1,
	Poison = 2,
	Electric = 3,
	Wind = 4,
	Null = 5
	
}