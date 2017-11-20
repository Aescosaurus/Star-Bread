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

hp = 200;

invulPeriod = 10;
invulTimer = 0;

lastKnownGood = 9999;