/// @description Update

key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check(ord("Z")) || keyboard_check(vk_space);

move = key_right - key_left;
hsp = walksp * move;
vsp += grv;

// Jumping
if (place_meeting(x,y+1,oWall)) && (key_jump)
{
	vsp = -15;
}

// Variable jump height
if vsp < 0 && (!(key_jump)) //if you're moving upwards in the air but not holding down jump
{
	vsp *= 0.85; //essentially, divide your vertical speed
}

// Horizontal Collision
if(place_meeting(x+hsp,y,oWall))
{
	while (!place_meeting(x+sign(hsp),y,oWall))
	{
		x = x + sign(hsp);	
	}
	hsp = 0;
}

x = x + hsp;


// Vertical Collision
if (place_meeting(x,y+vsp,oWall))
{
	while (!place_meeting(x,y+sign(vsp),oWall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}

y = y + vsp;

if (hsp != 0) image_xscale = sign(hsp);

if(sign(hsp) == 0)
{
	sprite_index = sPlayerIdle;	
}
else
{
	sprite_index = sPlayerRun;	
}