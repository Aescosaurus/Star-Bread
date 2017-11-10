/// @description Go Go Go!

if( x > 0 && x < 1920 )
{
	x += vx;
}
else
{
	vx = -vx;
	x += vx * 2;
}
