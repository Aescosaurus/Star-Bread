/// @description Start on keypress
if( keyboard_check_pressed( vk_space ) )
{
	room_goto( room0 );
}
if( keyboard_check_pressed( ord( "D" ) ) )
{
	game_end();
}