/// @description Initialize!

enum State
{
	Idle,
	Jumping,
	Falling,
	Moving
}

action = State.Idle;

moveSpeed = 5;

jumpPower = 3;
jumpTime = 15;
jumpTimer = 0;
jumping = false;
canJump = false;

grav = 0;
gravAcc = 0.3;