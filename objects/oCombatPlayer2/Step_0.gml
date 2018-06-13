event_inherited();

// Casting Spell
if (instance_exists(oSpellObject) && oTurnController.previousTurn = "oPlayer2") {
	sprite_index = castSprite;
	image_speed  = 0;
}

currentEnemy = oCombatPlayer;

// If hit by spell
if (place_meeting(x, y, oSpellObject) && oTurnController.previousTurn != "oPlayer2") {
	hurt = true;
	if (!playedHurtSound) {
		playedHurtSound = true;
		audio_play_sound(soHurt, 0, 0);
		ScreenFlash(1);
		ShakeScreen(4, 4);
		HurtHealCharacter(self, -1 * oSpellObject.damageToDeal);
	}
}
else {
	playedHurtSound = false;
	if (instance_exists(oSpellObject))
		ShakeScreen(2, 2);
}


if (skin != "sWitch" && skin != "sFrog") {
	image_xscale = -0.33;
	image_yscale = 0.33;
}
else {
	image_xscale = -1.0;
	image_yscale = 1.0;
}