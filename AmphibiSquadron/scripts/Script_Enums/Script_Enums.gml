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