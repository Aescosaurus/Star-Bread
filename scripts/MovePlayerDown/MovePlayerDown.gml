player.canJump = false;
player.jumping = false;
player.grav = player.jumpPower;
// player.canAttack = false;
player.y += 0.1;
player.action = State.Falling;