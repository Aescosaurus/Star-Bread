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

mySkein.willDraw = false;
// Makes collisions not glitch out.
mySkein.x = 99999;

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
else if( action != State.Idle && action != State.Moving && action != State.JumpAttack && grav >= 0 )
{
	action = State.Falling;
}

if( keyboard_check( ord( "D" ) ) && canAttack &&
  ( action == State.Jumping || ( action == State.Falling && !canJump ) ) )
{
	attacking = true;
}

// TODO: Optimize this to run only when changed.
// Actually, maybe check it'll work first..
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
else if( action == State.JumpAttack )
{ // TODO: Make this less gross and more consistent with other ifs.
	// skeinTimer = 0;
	sprite_index = s_JumpAttack;
}

// if( skeinTimer < skeinTime )
// {
// 	canAttack = true;
// 	++skeinTimer;
// 	
// 	sprite_index = s_JumpAttack;
// 	image_angle += -( rotSpeed * image_xscale );
// 	mySkein.willDraw = true;
// 	mySkein.x = x;
// 	mySkein.y = y;
// 	// Make me invincible.
// }
// else
// {
// 	canAttack = false;
// 	refireTimer = 0;
// }
// 
// if( refireTimer > refireTime )
// {
// 	canAttack = true;
// }
// else
// {
// 	++refireTimer;
// }

if( attacking )
{
	action = State.JumpAttack;
	if( attackTimer > attackTime || canJump )
	{
		attacking = false;
		action = State.Falling;
		canAttack = false;
		attackTimer = 0;
	}
	else
	{
		++attackTimer;
		image_angle += -( rotSpeed * image_xscale );
		mySkein.willDraw = true;
		mySkein.x = x;
		mySkein.y = y;
		// Make me invincible.
	}
}

if( !attacking )
{
	if( refireTimer > refireTime )
	{
		canAttack = true;
		refireTimer = 0;
	}
	else
	{
		++refireTimer;
	}
}

canJump = false;
y += grav;
grav += gravAcc;

if( action != State.JumpAttack )
{
	image_angle = 0;
}