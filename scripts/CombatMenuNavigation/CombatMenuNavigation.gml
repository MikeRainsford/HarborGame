// Currently in Menu
if (inCombatMenu && !inActionMenu && !inSpellMenu && !inItemMenu) {
	Input();
	combatMenuOptions[combatMenuIndex] = true;
		
	if (rightPressed || downPressed) {
		if (combatMenuIndex < 1) {
			combatMenuOptions[combatMenuIndex] = false;
			combatMenuIndex++;
			combatMenuOptions[combatMenuIndex] = true;
		}
		else {
			combatMenuOptions[combatMenuIndex] = false;
			combatMenuIndex = 0;
			combatMenuOptions[combatMenuIndex] = true;
		}
	}
	if (leftPressed || upPressed) {
		if (combatMenuIndex > 0) {
			combatMenuOptions[combatMenuIndex] = false;
			combatMenuIndex--;	
			combatMenuOptions[combatMenuIndex] = true;
		}
		else {
			combatMenuOptions[combatMenuIndex] = false;
			combatMenuIndex = 1;
			combatMenuOptions[combatMenuIndex] = true;
		}
	}
	
	// Enter into character menu, or escape
	if (action1Pressed) {
		if (combatMenuIndex == 0) {
			inCombatMenu = false;
			inActionMenu = true;
			combatMenuOptions[combatMenuIndex] = true;
		}
		else if (combatMenuIndex == 1) {
			//EscapeBattle();	
		}
	}
	if (action2Pressed) {
		inCombatMenu = false;
		combatMenuOptions[combatMenuIndex] = false;
	}
}