/// @description Update!

switch( keyboard_key )
{
case vk_left:
	action = State.Moving;
	x -= moveSpeed;
	image_xscale = -1;
	break;
case vk_right:
	action = State.Moving;
	x += moveSpeed;
	image_xscale = 1;
	break;
default:
	image_xscale = 1;
	action = State.Idle;
	break;
}
// TODO: Optimize this to run only when changed.
if( action == State.Idle )
{
	sprite_index = s_Idle;
}
else if( action == State.Moving )
{
	sprite_index = s_Moving;
}