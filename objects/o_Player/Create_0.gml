/// @description Initialize!

enum State
{
	Idle,
	Jumping,
	Falling,
	Moving,
	JumpAttack
}

action = State.Idle;

moveSpeed = 5;
rotSpeed = 30;

jumpPower = 4;
jumpTime = 15;
jumpTimer = 0;
jumping = false;
canJump = false;

grav = 0;
gravAcc = 0.3;

// canAttack = false;
mySkein = instance_create_layer( x,y,"Bullets",o_Skein );
attacking = false;
attackTime = 30;
attackTimer = 0;

canAttack = false;
refireTime = 100;
refireTimer = 0;

// skeinTime = 200;
// skeinTimer = 0;
// refireTime = 200;
// refireTimer = 0;