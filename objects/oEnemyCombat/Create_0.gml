event_inherited();

// @Override

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Player variables
maxHealth		= object_get_parent(id).maxHealth;
currentHealth	= object_get_parent(id).currentHealth;

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Game Objects belonging to player
spellBook = object_get_parent(id).spellBook;
inventory = object_get_parent(id).inventory;
skillTree = object_get_parent(id).skillTree;

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Sprites
idleSprite		= sFrogIdle;
hurtSprite		= sFrogHurt;
attackSprite	= sFrogCast;

if (x > room_width / 2)
	facing = -1;
else
	facing = 1;

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// State
if (oCombatManager.turnControllerObject.currentPlayerTurn.id == id)
	state = "idle";
else
	state = "waiting";

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// AI
searchedForSpell	= false;
spellToCast			= noone;
spellCursorX		= noone;
spellCursorY		= noone;
spellRot			= 0;
spellFlip			= 1;
chainCount			= 0;

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Other
combatZone			= oCombatManager.enemyCombatZone;
playedHurtSound		= false;
attackTarget		= oPlayerCombat;
startingX			= noone;
startingY			= noone; 
attackedThisTurn	= false;