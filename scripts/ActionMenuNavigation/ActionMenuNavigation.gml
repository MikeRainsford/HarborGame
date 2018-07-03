// Currently in Menu
if (inActionMenu && !inCombatMenu && !inSpellMenu && !inItemMenu) {
	show_debug_message("In action menu");
	Input();
	actionMenuOptions[actionMenuIndex] = true;
		
	if (rightPressed || downPressed) {
		if (actionMenuIndex < 1) {
			actionMenuOptions[actionMenuIndex] = false;
			actionMenuIndex++;
			actionMenuOptions[actionMenuIndex] = true;
		}
		else {
			actionMenuOptions[actionMenuIndex] = false;
			actionMenuIndex = 0;
			actionMenuOptions[actionMenuIndex] = true;
		}
	}
	if (leftPressed || upPressed) {
		if (actionMenuIndex > 0) {
			actionMenuOptions[actionMenuIndex] = false;
			actionMenuIndex--;	
			actionMenuOptions[actionMenuIndex] = true;
		}
		else {
			actionMenuOptions[actionMenuIndex] = false;
			actionMenuIndex = 1;
			actionMenuOptions[actionMenuIndex] = true;
		}
	}
	
	// Enter into spell or item menus
	/*
	if (action1Pressed) {
		if (actionMenuIndex == 0) {
			inActionMenu = false;
			inSpellMenu  = true;
			actionMenuOptions[actionMenuIndex] = true;
		}
		else if (actionMenuIndex == 1) {
			inActionMenu = false;
			inItemMenu   = true;
			actionMenuOptions[actionMenuIndex] = true;
		}
	}
	*/
	
	if (action2Pressed) {
		inActionMenu = false;
		inCombatMenu = true;
		actionMenuOptions[actionMenuIndex] = false;
	}
}