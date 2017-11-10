/// @description Iniiiiiiiiiiiit!

var spd = 3;
vx = 0;

if( random( 1 ) < 0.5 )
{
	vx = spd;
}
else
{
	vx = -spd;
}

hp = 1000;

invulPeriod = 10;
invulTimer = 0;