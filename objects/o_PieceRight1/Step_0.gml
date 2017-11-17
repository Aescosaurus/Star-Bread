/// @description Kick him away!

if( global.mapNum == 1 )
{
	willDraw = true;
	var pl = player;
	var result;
	
	do
	{
		result = rectangle_in_rectangle( x - sprite_width / 2,y - sprite_height / 2,
	                                     x + sprite_width / 2,y + sprite_height / 2,
	                                     pl.x - pl.sprite_width / 2,pl.y - pl.sprite_height / 2,
	                                     pl.x + pl.sprite_width / 2,pl.y + pl.sprite_height / 2 );
		if( result == 1 || result == 2 )
		{
			script_execute( MovePlayerRight );
		}
	}
	until( result == 0 );
}
else
{
	willDraw = false;
}