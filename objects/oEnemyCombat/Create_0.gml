event_inherited();

// @Override

// Player variables
maxHealth		= object_get_parent(id).maxHealth;
currentHealth	= object_get_parent(id).currentHealth;

// Game Objects belonging to player
spellBook = object_get_parent(id).spellBook;
inventory = object_get_parent(id).inventory;
skillTree = object_get_parent(id).skillTree;

// Sprites
idleSprite		= sFrogIdle;
hurtSprite		= sFrogHurt;
attackSprite	= sFrogCast;

if (x > room_width / 2)
	facing = -1;
else
	facing = 1;

// Other
if (oCombatManager.turnControllerObject.currentTurn.id == id)
	state = "idle";
else if (oCombatManager.turnControllerObject.nextTurn.id == id)
	state = "waiting";
nextState = "";
	
combatZone = oCombatManager.enemyCombatZone;
playedHurtSound = false;