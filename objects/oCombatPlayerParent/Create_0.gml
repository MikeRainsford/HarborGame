maxLife    = 25;
life       = maxLife;
depth      = oPuzzleBoard.depth - 1;
hurt       = false;
startingX  = x;
startingY  = y;

idleSprite   = "";
hurtSprite   = ""; 

playedHurtSound = false;

global.attacking = false;

currentEnemy = noone;

y += 1;