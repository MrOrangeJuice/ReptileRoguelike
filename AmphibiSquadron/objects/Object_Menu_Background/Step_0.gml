/// @description Insert description here
// You can write your code in this editor

//obtain inputs
key_up = keyboard_check_pressed(vk_up);
key_down = keyboard_check_pressed(vk_down);

//move through menu
op_selected += key_down - key_up;

if(op_selected >= op_length)
{
	op_selected = 0;
}

if(op_selected < 0)
{
	op_selected = op_length;
}
