// Cycle transition turn until end of turn
if (transitioning && alarm[0] < 0)
	alarm[0] = 1;
	
// Delete player turn objects
if (!transitioning && !playerTurn && instance_exists(oPlayerTurn))
	with (oPlayerTurn)
		instance_destroy();
if (!transitioning && !player2Turn && instance_exists(oPlayer2Turn))
	with (oPlayer2Turn)
		instance_destroy();
		
// Create player turn objects
if (!instance_exists(oCoin)) {
	if (playerTurn && instance_exists(oCombatPlayer) && !instance_exists(oPlayerTurn))
		instance_create_layer(0, 0, "GameLayer", oPlayerTurn);
	if (player2Turn && instance_exists(oCombatPlayer2) && !instance_exists(oPlayer2Turn) && nPlayers == 2)
		instance_create_layer(0, 0, "GameLayer", oPlayer2Turn);
}


// change timer
if (currentTime > 0)
	currentTime--;
else {
	if (!instance_exists(oEndTurnBanner))
		instance_create_layer(room_width / 2, room_height + 20, "PointsLayer", oEndTurnBanner);
	currentTime = 0;
	if (alarm[1] < 0)
		alarm[1] = 10;
}

// Format time
if (currentTime > 0) {
	seconds = (currentTime / room_speed) mod 60;
	timeString = string(seconds);
}
else
	timeString = "0.00";
	
// Timer sounds
if (currentTime / 30 <= 10 && currentTime / 30 >= 5)
	if (currentTime mod 30 == 0)
		audio_play_sound(soTimerClick, 0, 0);
if (currentTime / 30 < 5)
	if (currentTime mod 10 == 0)
		audio_play_sound(soTimerClick, 0, 0);
if (currentTime <= 0)
	audio_stop_sound(soTimerClick);