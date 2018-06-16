/*
if (instance_exists(oPlayerTurn))
	with(oPlayerTurn)
		instance_destroy();

if (player == 1) {
	instance_create_layer(0, 0, "GameLayer", oPlayerTurn);
	oTurnController.playerTurn = true;
	oTurnController.previousTurn = "oPlayer2";
	
	oCombatPlayer2.life += 5;
	//audio_play_sound(soPotion, 0, 0);
	//part_particles_create(heal, oPlayer2.x, oPlayer2.y, p, 30);
}
else if (player == 2){ 
	instance_create_layer(0, 0, "GameLayer", oPlayer2Turn);
	oTurnController.player2Turn = true;
	oTurnController.previousTurn = "oPlayer";
	
	oCombatPlayer.life += 5;
	//audio_play_sound(soPotion, 0, 0);
	//part_particles_create(heal, oPlayer.x, oPlayer.y, p, 30);
}

oTurnController.currentTime = oTurnController.turnTime;
instance_destroy();
*/