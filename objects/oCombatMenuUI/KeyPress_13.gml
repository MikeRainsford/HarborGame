if (!instance_exists(oRotatingSurfaceManager) && !instance_exists(oRotatingBoard)) {
	if (oPuzzleBoard.inCombatMenu) {
		var i = instance_create_layer(oPuzzleBoard.gridXOffset, oPuzzleBoard.gridYOffset, "ControllerLayer", oRotatingSurfaceManager);
		i.first = "combatMenu";
		oPuzzleBoard.inCombatMenu = false;
	}
}