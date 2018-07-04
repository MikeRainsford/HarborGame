if (!instance_exists(oRotatingSurfaceManager) && !instance_exists(oRotatingBoard)) {
	if (oCombatManager.turnControllerObject.currentTeamTurn = oCombatManager.turnControllerObject.friendlies) {
		if (oPuzzleBoard.inCombatMenu) {
			DrawCombatMenu();
		}
		if (attacking) {
			DrawSpellBook();
		}
	}
}