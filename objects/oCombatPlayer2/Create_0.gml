event_inherited();

skin = oCharacterSelectController.player2Skin;

idleSprite = asset_get_index(skin + "Idle");
hurtSprite = asset_get_index(skin + "Hurt");
castSprite = asset_get_index(skin + "Cast");

currentEnemy = oCombatPlayer;