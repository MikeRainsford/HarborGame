if (!instance_exists(oRotatingSurfaceManager) && !instance_exists(oRotatingBoard)) {
	if (!inCombatMenu) {
		DrawBorder();
		DrawElements();
	
		if (oCombatManager.turnControllerObject.currentPlayerTurn.state == "idle")
			DrawCursor();
	}
}