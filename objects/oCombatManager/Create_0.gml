// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
// Combat Game Objects
gridObject				= instance_create_layer(0,							0,					"ControllerLayer",	oPuzzleBoard);
cameraControllerObject  = instance_create_layer(0,							0,					"ControllerLayer",	oCameraControllerCombat);
turnControllerObject	= instance_create_layer(0,							0,					"ControllerLayer",	oTurnControllerCombat);
combatMenu				= instance_create_layer(0,							0,					"ControllerLayer",	oCombatMenu);

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
// Friendly Team
playerCombatZone		= instance_create_layer(32,							room_height - 16,	"GameLayer",		oCombatZone);

combatPlayerObject1		= instance_create_layer(playerCombatZone.point1,	playerCombatZone.y,	"GameLayer",		oPlayerCombat);
combatPlayerObject1.startingX		= playerCombatZone.point1;
combatPlayerObject1.startingY		= playerCombatZone.y;
combatPlayerObject1.idleSprite		= sWitchIdle;
combatPlayerObject1.hurtSprite		= sWitchHurt;
combatPlayerObject1.attackSprite	= sWitchCast;
ds_list_add(turnControllerObject.friendlies, combatPlayerObject1);

combatPlayerObject2		= instance_create_layer(playerCombatZone.point2,	playerCombatZone.y,	"GameLayer",		oPlayerCombat);
combatPlayerObject2.startingX = playerCombatZone.point2;
combatPlayerObject2.startingY = playerCombatZone.y;
combatPlayerObject2.idleSprite		= sExecutionerIdle;
combatPlayerObject2.hurtSprite		= sExecutionerHurt;
combatPlayerObject2.attackSprite	= sExecutionerCast;
ds_list_add(turnControllerObject.friendlies, combatPlayerObject2);
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
// Enemy Team
enemyCombatZone			= instance_create_layer(room_width - 32,			room_height - 16,	"GameLayer",		oCombatZone);

combatEnemyObject1		= instance_create_layer(enemyCombatZone.point2,		enemyCombatZone.y,	"GameLayer",		oEnemyCombat);	
combatEnemyObject1.startingX = enemyCombatZone.point2;
combatEnemyObject1.startingY = enemyCombatZone.y;
ds_list_add(turnControllerObject.enemies,	 combatEnemyObject1);

UpdateTeamOrder();
UpdateNextPlayerInLine();
UpdatePreviousPlayerInLine();

// Spell Data
GlobalSpellData();