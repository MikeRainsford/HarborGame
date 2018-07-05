// Currently in Menu
if (oPuzzleBoard.inCombatMenu && !oCombatManager.combatMenu.attacking && !oCombatManager.combatMenu.inSpellBook) { // && !inActionMenu && !inSpellMenu && !inItemMenu) {
	Input();
	combatMenuArray[combatMenuIndex] = true;
		
	if (downPressed) {
		audio_play_sound(soMenuMove, 0, 0);
		if (combatMenuIndex < array_length_1d(oCombatMenu.combatMenuArray) - 1) {
			combatMenuArray[combatMenuIndex] = false;
			combatMenuIndex++;
			combatMenuArray[combatMenuIndex] = true;
		}
		else {
			combatMenuArray[combatMenuIndex] = false;
			combatMenuIndex = 0;
			combatMenuArray[combatMenuIndex] = true;
		}
	}
	if (upPressed) {
		audio_play_sound(soMenuMove, 0, 0);
		if (combatMenuIndex > 0) {
			combatMenuArray[combatMenuIndex] = false;
			combatMenuIndex--;	
			combatMenuArray[combatMenuIndex] = true;
		}
		else {
			combatMenuArray[combatMenuIndex] = false;
			combatMenuIndex = array_length_1d(oCombatMenu.combatMenuArray) - 1;
			combatMenuArray[combatMenuIndex] = true;
		}
	}
	if (rightPressed) {
		NextPlayer();	
	}
	if (leftPressed) {
		PreviousPlayer();	
	}
	
	// Enter into attack menu
	if (action1Pressed) {
		if (combatMenuIndex == 0) {
			if (!oCombatManager.turnControllerObject.currentPlayerTurn.attackedThisTurn) {
				audio_play_sound(soCombatMenuSelect, 0, 0);
				attacking	 = true;
				inSpellBook	 = true;
				combatMenuArray[combatMenuIndex] = true;
				RotateBoard();
			}
		}
	}
}