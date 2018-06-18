// Update spell book index

// Player turn
if (oCombatManager.turnControllerObject.currentTurn == oPlayerCombat) {
	Input();
	if (oCombatManager.spellBookUI.inSpellBook) {
		if (rightPressed) {
			if (index < array_length_1d(data) - 1)
				index++;
			else
				index = 0;
		}
		if (leftPressed) {
			if (index > 0)
				index--;
			else
				index = array_length_1d(data) - 1;
		}
	}
}
// Enemy turn
else if (oCombatManager.turnControllerObject.currentTurn == oEnemyCombat) {
		
}