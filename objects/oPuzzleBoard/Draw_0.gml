// Draw border
draw_sprite_ext(sGridBorder, 0, room_width / 2 - 1, 50, 1, 1, 0, c_white, 1);

DrawElements();

if (oCombatManager.turnControllerObject.currentTurn.state == "idle")
	DrawCursor();