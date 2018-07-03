if (!instance_exists(oRotatingSurfaceManager) && !instance_exists(oRotatingBoard)) {
	if (!inCombatMenu) {
		var i = instance_create_layer(gridXOffset, gridYOffset, "ControllerLayer", oRotatingSurfaceManager);
		i.first = "board";
		inCombatMenu = true;
	}
}