/// @description Update!

// switch( keyboard_key )
// {
// case vk_left:
// 	action = State.Moving;
// 	x -= moveSpeed;
// 	image_xscale = -1;
// 	break;
// case vk_right:
// 	action = State.Moving;
// 	x += moveSpeed;
// 	image_xscale = 1;
// 	break;
// case vk_space:
// {
// 	if( canJump )
// 	{
// 		jumping = true;
// 		action = State.Jumping;
// 	}
// 	break;
// }
// default:
// 	image_xscale = 1;
// 	action = State.Idle;
// 	break;
// }

if( keyboard_check( vk_left ) )
{
	if( action == State.Idle )
	{
		action = State.Moving;
	}
	x -= moveSpeed;
	image_xscale = -1;
}
if( keyboard_check( vk_right ) )
{
	if( action == State.Idle )
	{
		action = State.Moving;
	}
	x += moveSpeed;
	image_xscale = 1;
}
if( keyboard_check( vk_space ) )
{
	if( canJump )
	{
		jumping = true;
		jumpTimer = 0;
	}
}
else
{
	jumping = false;
}

if( jumping )
{
	action = State.Jumping;
	y -= jumpPower;
	++jumpTimer;
	grav = -jumpPower;
	if( jumpTimer > jumpTime )
	{
		jumping = false;
		// action = State.Falling;
	}
}
else if( action != State.Idle && action != State.Moving && grav >= 0 )
{
	action = State.Falling;
}

// if( grav > 1 )
// {
// 	action = State.Falling;
// }

// TODO: Optimize this to run only when changed.
if( action == State.Idle )
{
	sprite_index = s_Idle;
}
else if( action == State.Moving )
{
	sprite_index = s_Moving;
}
else if( action == State.Jumping )
{
	sprite_index = s_Jumping; 
}
else if( action == State.Falling )
{
	sprite_index = s_Falling;
}

canJump = false;
y += grav;
grav += gravAcc;

show_debug_message( action );