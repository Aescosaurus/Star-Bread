/// @description Get Hit!

if( lastKnownGood != global.mapNum )
{
	++invulTimer;
	if( invulTimer > invulPeriod )
	{
		var damage = round( random_range( player.minDamage,player.maxDamage ) );
		hp -= damage;
		invulTimer = 0;
		
		var hitVal = instance_create_layer( x,y,"Bullets",o_DamageNumber );
		hitVal.x = x;
		hitVal.y = y;
		hitVal.val = damage;
		
		image_index = 1;
	}
}

if( hp < 1 )
{
	++global.scoree;
	lastKnownGood = global.mapNum;
}