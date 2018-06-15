// Combat Game Objects
gridObject				= instance_create_layer(0,					0,					"ControllerLayer",	oPuzzleBoard);
spellBookUI				= instance_create_layer(0,					0,					"ControllerLayer",	oSpellBookUI);
turnControllerObject	= instance_create_layer(0,					0,					"ControllerLayer",	oTurnController);
cameraControllerObject  = instance_create_layer(0,					0,					"ControllerLayer",	oCameraController);
playerCombatZone		= instance_create_layer(32,					room_height - 16,	"GameLayer",		oCombatZone);
enemyCombatZone			= instance_create_layer(room_width - 32,	room_height - 16,	"GameLayer",		oCombatZone);
combatPlayerObject		= instance_create_layer(playerCombatZone.x,	playerCombatZone.y,	"GameLayer",		oCombatPlayer);
combatEnemyObject		= instance_create_layer(enemyCombatZone.x,	enemyCombatZone.y,	"GameLayer",		oCombatEnemy);	

// Spell Data
GlobalSpellData();