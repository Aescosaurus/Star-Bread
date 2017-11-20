/// @description Insert description here
// You can write your code in this editor

var offsetX = player.x - 50;
var offsetY = player.y - 50;

draw_text( 15,15,timeLeft );
draw_text( 750,15,"Score: " + string( global.scoree ) );
draw_text( 950,15,"Artifacts: " + string( global.collect ) );

++sixtySTimer;

if( sixtySTimer > 60 )
{
	sixtySTimer = 0;
	--timeLeft;
}

if( timeLeft < 1 )
{
	room_goto( tut );
}