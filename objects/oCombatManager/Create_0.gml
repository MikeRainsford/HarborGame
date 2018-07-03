// Combat Game Objects
gridObject				= instance_create_layer(0,					0,					"ControllerLayer",	oPuzzleBoard);
cameraControllerObject  = instance_create_layer(0,					0,					"ControllerLayer",	oCameraControllerCombat);
turnControllerObject	= instance_create_layer(0,					0,					"ControllerLayer",	oTurnControllerCombat);
spellBookUI				= instance_create_layer(0,					0,					"ControllerLayer",	oSpellBookUI);
combatMenu				= instance_create_layer(0,					0,					"ControllerLayer",	oCombatMenuUI);

playerCombatZone		= instance_create_layer(32,					room_height - 16,	"GameLayer",		oCombatZone);
enemyCombatZone			= instance_create_layer(room_width - 32,	room_height - 16,	"GameLayer",		oCombatZone);
combatPlayerObject		= instance_create_layer(playerCombatZone.x,	playerCombatZone.y,	"GameLayer",		oPlayerCombat);
combatEnemyObject		= instance_create_layer(enemyCombatZone.x,	enemyCombatZone.y,	"GameLayer",		oEnemyCombat);	

// Push Characters Into Teams
ds_list_add(turnControllerObject.friendlies, combatPlayerObject);
ds_list_add(turnControllerObject.enemies,	 combatEnemyObject);

UpdateTeamOrder();
UpdateNextPlayerInLine();
UpdatePreviousPlayerInLine();

// Spell Data
GlobalSpellData();