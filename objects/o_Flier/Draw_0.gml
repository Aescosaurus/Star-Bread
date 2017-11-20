/// @description Reset Color.

if( lastKnownGood != global.mapNum )
{
	draw_self();
}
else
{
	hp = 200;
}

if( random( 1 ) < 0.3 )
{
	image_index = 0;
}