/// @description Destroy

if( action != State.JumpAttack && canGetHit )
{
	room_goto( tut );
}

if( action != State.JumpAttack )
{
	canGetHit = true;
}