if (inCombatMenu || inActionMenu || inSpellMenu || inItemMenu) {
	// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
	// Draw Main Menu
	var textScale	= 0.20;
	var cx			= startX;
	var cy			= currentY;
	draw_sprite_ext(sCombatMenu, 0, cx, cy, 1, 1, 0, c_white, 1);	

	// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
	// Draw Arrow
	draw_text_transformed_color(cx + 5, (cy - 4) + (4 * combatMenuIndex), ">", textScale, textScale, 0, c_white, c_white, c_white, c_white, 1);

	// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
	// Draw text
	// Player1
	var col;
	if (combatMenuOptions[0])
		col = c_white;
	else
		col = c_gray;
		draw_text_transformed_color(cx + 8, cy - 4, "Player1",	textScale, textScale, 0, col, col, col, col, 1);
	
	// Escape
	var col;
	if (combatMenuOptions[1])
		col = c_white;
	else
		col = c_gray;
		draw_text_transformed_color(cx + 8, cy - 0, "Escape",	textScale, textScale, 0, col, col, col, col, 1);
}