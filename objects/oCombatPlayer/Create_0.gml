event_inherited();

// @Override

// Player variables
maxHealth		= object_get_parent(self).maxHealth;
currentHealth	= object_get_parent(self).currentHealth;

// Game Objects belonging to player
spellBook = object_get_parent(self).spellBook;
inventory = object_get_parent(self).inventory;
skillTree = object_get_parent(self).skillTree;

// Sprites
idleSprite		= sWitchIdle;
hurtSprite		= sWitchHurt;
attackSprite	= sWitchCast;

if (x > room_width / 2)
	facing = -1;
else
	facing = 1;

// Other
state = "idle";
combatZone = oCombatManager.playerCombatZone;